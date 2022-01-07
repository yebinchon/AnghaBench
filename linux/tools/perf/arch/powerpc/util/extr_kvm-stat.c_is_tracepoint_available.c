
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_events_error {int * str; } ;
struct evlist {int dummy; } ;


 int parse_events (struct evlist*,char const*,struct parse_events_error*) ;
 int pr_err (char*,char const*,int *) ;

__attribute__((used)) static int is_tracepoint_available(const char *str, struct evlist *evlist)
{
 struct parse_events_error err;
 int ret;

 err.str = ((void*)0);
 ret = parse_events(evlist, str, &err);
 if (err.str)
  pr_err("%s : %s\n", str, err.str);
 return ret;
}
