% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glmmixed.R
\name{glmmixed}
\alias{glmmixed}
\title{Mixed effects binomial logistic regression models: \code{finalfit} model wrapper}
\usage{
glmmixed(.data, dependent, explanatory, random_effect)
}
\arguments{
\item{.data}{Dataframe.}

\item{dependent}{Character vector of length 1, name of depdendent variable (must have 2 levels).}

\item{explanatory}{Character vector of any length: name(s) of explanatory variables.}

\item{random_effect}{Character vector of length 1, name of random effect variable.}
}
\value{
A list of multivariable \code{lme4::\link[lme4]{glmer}} fitted model outputs.
  Output is of class \code{glmerMod}.
}
\description{
Using \code{finalfit} conventions, produces mixed effects binomial logistic
  regression models for a set of explanatory variables against a binary dependent.
}
\details{
Uses \code{lme4::\link[lme4]{glmer}} with \code{finalfit} modelling conventions. Output can be
  passed to \code{\link{fit2df}}. This is only currently set-up to take a single random effect
  as a random intercept. Can be updated in future to allow multiple random intercepts,
  random gradients and interactions on random effects if there is a need
}
\examples{
library(finalfit)
library(dplyr)

explanatory = c("age.factor", "sex.factor", "obstruct.factor", "perfor.factor")
random_effect = "hospital"
dependent = "mort_5yr"

colon_s \%>\%
  glmmixed(dependent, explanatory, random_effect) \%>\%
	 fit2df(estimate_suffix=" (multilevel")
}
\seealso{
\code{\link{fit2df}, \link{finalfit_merge}}

Other \code{finalfit} model wrappers: \code{\link{coxphmulti}},
  \code{\link{coxphuni}}, \code{\link{glmmulti_boot}},
  \code{\link{glmmulti}}, \code{\link{glmuni}},
  \code{\link{lmmixed}}, \code{\link{lmmulti}},
  \code{\link{lmuni}}
}
