
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int arch_spin_unlock (int *) ;
 int preempt_enable () ;
 int trace_cmdline_lock ;

__attribute__((used)) static void saved_cmdlines_stop(struct seq_file *m, void *v)
{
 arch_spin_unlock(&trace_cmdline_lock);
 preempt_enable();
}
