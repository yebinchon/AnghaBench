
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_events_error {int * str; } ;
 int __PARSE_EVENTS__TERM_TYPE_NR ;
 int asprintf (int **,char*,int ) ;
 int * config_term_names ;
 int config_term_shrinked ;
 int * strdup (char*) ;

__attribute__((used)) static bool
config_term_avail(int term_type, struct parse_events_error *err)
{
 if (term_type < 0 || term_type >= __PARSE_EVENTS__TERM_TYPE_NR) {
  err->str = strdup("Invalid term_type");
  return 0;
 }
 if (!config_term_shrinked)
  return 1;

 switch (term_type) {
 case 133:
 case 132:
 case 131:
 case 130:
 case 128:
 case 129:
  return 1;
 default:
  if (!err)
   return 0;


  if (asprintf(&err->str, "'%s' is not usable in 'perf stat'",
        config_term_names[term_type]) < 0)
   err->str = ((void*)0);
  return 0;
 }
}
