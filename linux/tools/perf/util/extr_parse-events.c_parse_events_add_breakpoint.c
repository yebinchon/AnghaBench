
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_event_attr {unsigned long bp_addr; scalar_t__ bp_type; int bp_len; int sample_period; int type; } ;
struct list_head {int dummy; } ;
typedef int attr ;


 int EINVAL ;
 int HW_BREAKPOINT_LEN_4 ;
 scalar_t__ HW_BREAKPOINT_X ;
 int PERF_TYPE_BREAKPOINT ;
 int add_event (struct list_head*,int*,struct perf_event_attr*,int *,int *) ;
 int memset (struct perf_event_attr*,int ,int) ;
 scalar_t__ parse_breakpoint_type (char*,struct perf_event_attr*) ;

int parse_events_add_breakpoint(struct list_head *list, int *idx,
    void *ptr, char *type, u64 len)
{
 struct perf_event_attr attr;

 memset(&attr, 0, sizeof(attr));
 attr.bp_addr = (unsigned long) ptr;

 if (parse_breakpoint_type(type, &attr))
  return -EINVAL;


 if (!len) {
  if (attr.bp_type == HW_BREAKPOINT_X)
   len = sizeof(long);
  else
   len = HW_BREAKPOINT_LEN_4;
 }

 attr.bp_len = len;

 attr.type = PERF_TYPE_BREAKPOINT;
 attr.sample_period = 1;

 return add_event(list, idx, &attr, ((void*)0), ((void*)0));
}
