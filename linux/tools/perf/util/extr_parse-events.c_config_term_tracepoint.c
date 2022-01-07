
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int dummy; } ;
struct parse_events_term {int type_term; int err_term; } ;
struct parse_events_error {void* help; void* str; int idx; } ;


 int EINVAL ;
 int config_term_common (struct perf_event_attr*,struct parse_events_term*,struct parse_events_error*) ;
 void* strdup (char*) ;

__attribute__((used)) static int config_term_tracepoint(struct perf_event_attr *attr,
      struct parse_events_term *term,
      struct parse_events_error *err)
{
 switch (term->type_term) {
 case 135:
 case 128:
 case 134:
 case 131:
 case 132:
 case 133:
 case 129:
 case 130:
 case 136:
  return config_term_common(attr, term, err);
 default:
  if (err) {
   err->idx = term->err_term;
   err->str = strdup("unknown term");
   err->help = strdup("valid terms: call-graph,stack-size\n");
  }
  return -EINVAL;
 }

 return 0;
}
