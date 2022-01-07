
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;
 scalar_t__ cpumask_empty (int *) ;
 int get_online_cpus () ;
 int iucv_block_cpu ;
 int iucv_disable () ;
 int iucv_irq_cpumask ;
 int iucv_max_pathid ;
 scalar_t__* iucv_path_table ;
 int iucv_sever_pathid (int,int *) ;
 int on_each_cpu_mask (int *,int ,int *,int) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int put_online_cpus () ;

__attribute__((used)) static int iucv_reboot_event(struct notifier_block *this,
        unsigned long event, void *ptr)
{
 int i;

 if (cpumask_empty(&iucv_irq_cpumask))
  return NOTIFY_DONE;

 get_online_cpus();
 on_each_cpu_mask(&iucv_irq_cpumask, iucv_block_cpu, ((void*)0), 1);
 preempt_disable();
 for (i = 0; i < iucv_max_pathid; i++) {
  if (iucv_path_table[i])
   iucv_sever_pathid(i, ((void*)0));
 }
 preempt_enable();
 put_online_cpus();
 iucv_disable();
 return NOTIFY_DONE;
}
