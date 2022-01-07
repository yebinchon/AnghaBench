
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {unsigned int cpu; int flags; } ;


 scalar_t__ IS_ERR (struct task_struct*) ;
 int KTHREAD_IS_PER_CPU ;
 int cpu_to_node (unsigned int) ;
 int kthread_bind (struct task_struct*,unsigned int) ;
 struct task_struct* kthread_create_on_node (int (*) (void*),void*,int ,char const*,unsigned int) ;
 int set_bit (int ,int *) ;
 TYPE_1__* to_kthread (struct task_struct*) ;

struct task_struct *kthread_create_on_cpu(int (*threadfn)(void *data),
       void *data, unsigned int cpu,
       const char *namefmt)
{
 struct task_struct *p;

 p = kthread_create_on_node(threadfn, data, cpu_to_node(cpu), namefmt,
       cpu);
 if (IS_ERR(p))
  return p;
 kthread_bind(p, cpu);

 set_bit(KTHREAD_IS_PER_CPU, &to_kthread(p)->flags);
 to_kthread(p)->cpu = cpu;
 return p;
}
