
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event_attr {int dummy; } ;
struct TYPE_2__ {int disabled; } ;
struct perf_event {TYPE_1__ attr; } ;


 int _perf_event_disable (struct perf_event*) ;
 int _perf_event_enable (struct perf_event*) ;
 int modify_user_hw_breakpoint_check (struct perf_event*,struct perf_event_attr*,int) ;

__attribute__((used)) static int perf_event_modify_breakpoint(struct perf_event *bp,
      struct perf_event_attr *attr)
{
 int err;

 _perf_event_disable(bp);

 err = modify_user_hw_breakpoint_check(bp, attr, 1);

 if (!bp->attr.disabled)
  _perf_event_enable(bp);

 return err;
}
