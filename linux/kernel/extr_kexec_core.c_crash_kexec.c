
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int PANIC_CPU_INVALID ;
 int __crash_kexec (struct pt_regs*) ;
 int atomic_cmpxchg (int *,int,int) ;
 int atomic_set (int *,int) ;
 int panic_cpu ;
 int printk_safe_flush_on_panic () ;
 int raw_smp_processor_id () ;

void crash_kexec(struct pt_regs *regs)
{
 int old_cpu, this_cpu;






 this_cpu = raw_smp_processor_id();
 old_cpu = atomic_cmpxchg(&panic_cpu, PANIC_CPU_INVALID, this_cpu);
 if (old_cpu == PANIC_CPU_INVALID) {

  printk_safe_flush_on_panic();
  __crash_kexec(regs);





  atomic_set(&panic_cpu, PANIC_CPU_INVALID);
 }
}
