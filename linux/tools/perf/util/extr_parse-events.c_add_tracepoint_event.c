
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_events_error {int dummy; } ;
struct list_head {int dummy; } ;


 int add_tracepoint (struct list_head*,int*,char const*,char const*,struct parse_events_error*,struct list_head*) ;
 int add_tracepoint_multi_event (struct list_head*,int*,char const*,char const*,struct parse_events_error*,struct list_head*) ;
 scalar_t__ strpbrk (char const*,char*) ;

__attribute__((used)) static int add_tracepoint_event(struct list_head *list, int *idx,
    const char *sys_name, const char *evt_name,
    struct parse_events_error *err,
    struct list_head *head_config)
{
 return strpbrk(evt_name, "*?") ?
        add_tracepoint_multi_event(list, idx, sys_name, evt_name,
       err, head_config) :
        add_tracepoint(list, idx, sys_name, evt_name,
         err, head_config);
}
