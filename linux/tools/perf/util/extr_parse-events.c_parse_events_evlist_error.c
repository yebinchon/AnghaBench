
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_events_state {struct parse_events_error* error; } ;
struct parse_events_error {int idx; int str; } ;


 int WARN_ONCE (int,char*) ;
 int strdup (char const*) ;

void parse_events_evlist_error(struct parse_events_state *parse_state,
          int idx, const char *str)
{
 struct parse_events_error *err = parse_state->error;

 if (!err)
  return;
 err->idx = idx;
 err->str = strdup(str);
 WARN_ONCE(!err->str, "WARNING: failed to allocate error string");
}
