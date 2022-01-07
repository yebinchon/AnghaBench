
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int static_terms ;


 int __PARSE_EVENTS__TERM_TYPE_NR ;
 scalar_t__ asprintf (char**,char*,char*,...) ;
 int config_terms_list (char*,int) ;

char *parse_events_formats_error_string(char *additional_terms)
{
 char *str;

 char static_terms[__PARSE_EVENTS__TERM_TYPE_NR *
     (sizeof("no-overwrite") - 1)];

 config_terms_list(static_terms, sizeof(static_terms));

 if (additional_terms) {
  if (asprintf(&str, "valid terms: %s,%s",
        additional_terms, static_terms) < 0)
   goto fail;
 } else {
  if (asprintf(&str, "valid terms: %s", static_terms) < 0)
   goto fail;
 }
 return str;

fail:
 return ((void*)0);
}
