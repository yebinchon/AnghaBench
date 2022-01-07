
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct sched_param {int sched_priority; } ;
struct irqaction {int thread_flags; int thread; int name; } ;


 int IRQTF_AFFINITY ;
 scalar_t__ IS_ERR (struct task_struct*) ;
 int MAX_USER_RT_PRIO ;
 int PTR_ERR (struct task_struct*) ;
 int SCHED_FIFO ;
 int get_task_struct (struct task_struct*) ;
 int irq_thread ;
 struct task_struct* kthread_create (int ,struct irqaction*,char*,unsigned int,int ) ;
 int sched_setscheduler_nocheck (struct task_struct*,int ,struct sched_param*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int
setup_irq_thread(struct irqaction *new, unsigned int irq, bool secondary)
{
 struct task_struct *t;
 struct sched_param param = {
  .sched_priority = MAX_USER_RT_PRIO/2,
 };

 if (!secondary) {
  t = kthread_create(irq_thread, new, "irq/%d-%s", irq,
       new->name);
 } else {
  t = kthread_create(irq_thread, new, "irq/%d-s-%s", irq,
       new->name);
  param.sched_priority -= 1;
 }

 if (IS_ERR(t))
  return PTR_ERR(t);

 sched_setscheduler_nocheck(t, SCHED_FIFO, &param);






 new->thread = get_task_struct(t);
 set_bit(IRQTF_AFFINITY, &new->thread_flags);
 return 0;
}
