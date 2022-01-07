
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct smp_hotplug_thread {int selfparking; int store; } ;


 int kthread_unpark (struct task_struct*) ;
 struct task_struct** per_cpu_ptr (int ,unsigned int) ;

__attribute__((used)) static void smpboot_unpark_thread(struct smp_hotplug_thread *ht, unsigned int cpu)
{
 struct task_struct *tsk = *per_cpu_ptr(ht->store, cpu);

 if (!ht->selfparking)
  kthread_unpark(tsk);
}
