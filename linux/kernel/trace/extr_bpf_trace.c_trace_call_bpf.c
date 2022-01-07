
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_call {int prog_array; } ;


 int BPF_PROG_RUN ;
 unsigned int BPF_PROG_RUN_ARRAY_CHECK (int ,void*,int ) ;
 int __this_cpu_dec (int ) ;
 int __this_cpu_inc_return (int ) ;
 int bpf_prog_active ;
 scalar_t__ in_nmi () ;
 int preempt_disable () ;
 int preempt_enable () ;
 scalar_t__ unlikely (int) ;

unsigned int trace_call_bpf(struct trace_event_call *call, void *ctx)
{
 unsigned int ret;

 if (in_nmi())
  return 1;

 preempt_disable();

 if (unlikely(__this_cpu_inc_return(bpf_prog_active) != 1)) {






  ret = 0;
  goto out;
 }
 ret = BPF_PROG_RUN_ARRAY_CHECK(call->prog_array, ctx, BPF_PROG_RUN);

 out:
 __this_cpu_dec(bpf_prog_active);
 preempt_enable();

 return ret;
}
