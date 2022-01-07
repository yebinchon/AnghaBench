
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int upper; int lower; } ;
struct tipc_subscr {TYPE_2__ seq; } ;
struct TYPE_3__ {struct tipc_subscr s; } ;
struct tipc_subscription {int inactive; int lock; TYPE_1__ evt; } ;
struct timer_list {int dummy; } ;


 int TIPC_SUBSCR_TIMEOUT ;
 struct tipc_subscription* from_timer (int ,struct timer_list*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct tipc_subscription* sub ;
 int timer ;
 int tipc_sub_send_event (struct tipc_subscription*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void tipc_sub_timeout(struct timer_list *t)
{
 struct tipc_subscription *sub = from_timer(sub, t, timer);
 struct tipc_subscr *s = &sub->evt.s;

 spin_lock(&sub->lock);
 tipc_sub_send_event(sub, s->seq.lower, s->seq.upper,
       TIPC_SUBSCR_TIMEOUT, 0, 0);
 sub->inactive = 1;
 spin_unlock(&sub->lock);
}
