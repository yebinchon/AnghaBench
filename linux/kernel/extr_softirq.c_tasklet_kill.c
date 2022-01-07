
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tasklet_struct {int state; } ;


 int TASKLET_STATE_SCHED ;
 int clear_bit (int ,int *) ;
 scalar_t__ in_interrupt () ;
 int pr_notice (char*) ;
 int tasklet_unlock_wait (struct tasklet_struct*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int yield () ;

void tasklet_kill(struct tasklet_struct *t)
{
 if (in_interrupt())
  pr_notice("Attempt to kill tasklet from interrupt\n");

 while (test_and_set_bit(TASKLET_STATE_SCHED, &t->state)) {
  do {
   yield();
  } while (test_bit(TASKLET_STATE_SCHED, &t->state));
 }
 tasklet_unlock_wait(t);
 clear_bit(TASKLET_STATE_SCHED, &t->state);
}
