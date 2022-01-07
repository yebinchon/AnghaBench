
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int dummy; } ;
struct parse_events_term {scalar_t__ type_term; } ;
struct parse_events_error {int dummy; } ;


 scalar_t__ PARSE_EVENTS__TERM_TYPE_DRV_CFG ;
 scalar_t__ PARSE_EVENTS__TERM_TYPE_USER ;
 int config_term_common (struct perf_event_attr*,struct parse_events_term*,struct parse_events_error*) ;

__attribute__((used)) static int config_term_pmu(struct perf_event_attr *attr,
      struct parse_events_term *term,
      struct parse_events_error *err)
{
 if (term->type_term == PARSE_EVENTS__TERM_TYPE_USER ||
     term->type_term == PARSE_EVENTS__TERM_TYPE_DRV_CFG)




  return 0;
 else
  return config_term_common(attr, term, err);
}
