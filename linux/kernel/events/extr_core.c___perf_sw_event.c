
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct pt_regs {int dummy; } ;


 int ___perf_sw_event (int ,int ,struct pt_regs*,int ) ;
 int perf_swevent_get_recursion_context () ;
 int perf_swevent_put_recursion_context (int) ;
 int preempt_disable_notrace () ;
 int preempt_enable_notrace () ;
 scalar_t__ unlikely (int) ;

void __perf_sw_event(u32 event_id, u64 nr, struct pt_regs *regs, u64 addr)
{
 int rctx;

 preempt_disable_notrace();
 rctx = perf_swevent_get_recursion_context();
 if (unlikely(rctx < 0))
  goto fail;

 ___perf_sw_event(event_id, nr, regs, addr);

 perf_swevent_put_recursion_context(rctx);
fail:
 preempt_enable_notrace();
}
