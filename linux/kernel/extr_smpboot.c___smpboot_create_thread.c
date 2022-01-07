
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct smpboot_thread_data {unsigned int cpu; struct smp_hotplug_thread* ht; } ;
struct smp_hotplug_thread {int (* create ) (unsigned int) ;int store; int thread_comm; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct task_struct*) ;
 int PTR_ERR (struct task_struct*) ;
 int TASK_PARKED ;
 int WARN_ON (int) ;
 int cpu_to_node (unsigned int) ;
 int get_task_struct (struct task_struct*) ;
 int kfree (struct smpboot_thread_data*) ;
 struct task_struct* kthread_create_on_cpu (int ,struct smpboot_thread_data*,unsigned int,int ) ;
 int kthread_park (struct task_struct*) ;
 struct smpboot_thread_data* kzalloc_node (int,int ,int ) ;
 struct task_struct** per_cpu_ptr (int ,unsigned int) ;
 int smpboot_thread_fn ;
 int stub1 (unsigned int) ;
 int wait_task_inactive (struct task_struct*,int ) ;

__attribute__((used)) static int
__smpboot_create_thread(struct smp_hotplug_thread *ht, unsigned int cpu)
{
 struct task_struct *tsk = *per_cpu_ptr(ht->store, cpu);
 struct smpboot_thread_data *td;

 if (tsk)
  return 0;

 td = kzalloc_node(sizeof(*td), GFP_KERNEL, cpu_to_node(cpu));
 if (!td)
  return -ENOMEM;
 td->cpu = cpu;
 td->ht = ht;

 tsk = kthread_create_on_cpu(smpboot_thread_fn, td, cpu,
        ht->thread_comm);
 if (IS_ERR(tsk)) {
  kfree(td);
  return PTR_ERR(tsk);
 }




 kthread_park(tsk);
 get_task_struct(tsk);
 *per_cpu_ptr(ht->store, cpu) = tsk;
 if (ht->create) {






  if (!wait_task_inactive(tsk, TASK_PARKED))
   WARN_ON(1);
  else
   ht->create(cpu);
 }
 return 0;
}
