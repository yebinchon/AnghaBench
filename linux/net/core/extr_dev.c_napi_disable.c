
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct napi_struct {int state; int timer; } ;


 int NAPI_STATE_DISABLE ;
 int NAPI_STATE_NPSVC ;
 int NAPI_STATE_SCHED ;
 int clear_bit (int ,int *) ;
 int hrtimer_cancel (int *) ;
 int might_sleep () ;
 int msleep (int) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

void napi_disable(struct napi_struct *n)
{
 might_sleep();
 set_bit(NAPI_STATE_DISABLE, &n->state);

 while (test_and_set_bit(NAPI_STATE_SCHED, &n->state))
  msleep(1);
 while (test_and_set_bit(NAPI_STATE_NPSVC, &n->state))
  msleep(1);

 hrtimer_cancel(&n->timer);

 clear_bit(NAPI_STATE_DISABLE, &n->state);
}
