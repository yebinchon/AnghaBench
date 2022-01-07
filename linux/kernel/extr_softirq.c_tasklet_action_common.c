
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tasklet_struct {struct tasklet_struct* next; int data; int (* func ) (int ) ;int state; int count; } ;
struct tasklet_head {struct tasklet_struct** tail; struct tasklet_struct* head; } ;
struct softirq_action {int dummy; } ;


 int BUG () ;
 int TASKLET_STATE_SCHED ;
 int __raise_softirq_irqoff (unsigned int) ;
 int atomic_read (int *) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int stub1 (int ) ;
 scalar_t__ tasklet_trylock (struct tasklet_struct*) ;
 int tasklet_unlock (struct tasklet_struct*) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void tasklet_action_common(struct softirq_action *a,
      struct tasklet_head *tl_head,
      unsigned int softirq_nr)
{
 struct tasklet_struct *list;

 local_irq_disable();
 list = tl_head->head;
 tl_head->head = ((void*)0);
 tl_head->tail = &tl_head->head;
 local_irq_enable();

 while (list) {
  struct tasklet_struct *t = list;

  list = list->next;

  if (tasklet_trylock(t)) {
   if (!atomic_read(&t->count)) {
    if (!test_and_clear_bit(TASKLET_STATE_SCHED,
       &t->state))
     BUG();
    t->func(t->data);
    tasklet_unlock(t);
    continue;
   }
   tasklet_unlock(t);
  }

  local_irq_disable();
  t->next = ((void*)0);
  *tl_head->tail = t;
  tl_head->tail = &t->next;
  __raise_softirq_irqoff(softirq_nr);
  local_irq_enable();
 }
}
