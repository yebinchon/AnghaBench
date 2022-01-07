
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct perf_event_attr {int dummy; } ;
struct TYPE_4__ {int disabled; } ;
struct perf_event {TYPE_2__ attr; TYPE_1__* ctx; } ;
struct TYPE_3__ {scalar_t__ task; } ;


 scalar_t__ current ;
 scalar_t__ irqs_disabled () ;
 int modify_user_hw_breakpoint_check (struct perf_event*,struct perf_event_attr*,int) ;
 int perf_event_disable (struct perf_event*) ;
 int perf_event_disable_local (struct perf_event*) ;
 int perf_event_enable (struct perf_event*) ;

int modify_user_hw_breakpoint(struct perf_event *bp, struct perf_event_attr *attr)
{
 int err;







 if (irqs_disabled() && bp->ctx && bp->ctx->task == current)
  perf_event_disable_local(bp);
 else
  perf_event_disable(bp);

 err = modify_user_hw_breakpoint_check(bp, attr, 0);

 if (!bp->attr.disabled)
  perf_event_enable(bp);

 return err;
}
