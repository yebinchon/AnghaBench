
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int PANIC_CPU_INVALID ;
 int atomic_cmpxchg (int *,int,int) ;
 int nmi_panic_self_stop (struct pt_regs*) ;
 int panic (char*,char const*) ;
 int panic_cpu ;
 int raw_smp_processor_id () ;

void nmi_panic(struct pt_regs *regs, const char *msg)
{
 int old_cpu, cpu;

 cpu = raw_smp_processor_id();
 old_cpu = atomic_cmpxchg(&panic_cpu, PANIC_CPU_INVALID, cpu);

 if (old_cpu == PANIC_CPU_INVALID)
  panic("%s", msg);
 else if (old_cpu != cpu)
  nmi_panic_self_stop(regs);
}
