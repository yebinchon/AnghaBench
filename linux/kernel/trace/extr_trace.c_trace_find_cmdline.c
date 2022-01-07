
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __trace_find_cmdline (int,char*) ;
 int arch_spin_lock (int *) ;
 int arch_spin_unlock (int *) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int trace_cmdline_lock ;

void trace_find_cmdline(int pid, char comm[])
{
 preempt_disable();
 arch_spin_lock(&trace_cmdline_lock);

 __trace_find_cmdline(pid, comm);

 arch_spin_unlock(&trace_cmdline_lock);
 preempt_enable();
}
