
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ timeout; } ;
struct TYPE_4__ {TYPE_1__ s; } ;
struct tipc_subscription {int sub_list; int timer; TYPE_2__ evt; } ;


 scalar_t__ TIPC_WAIT_FOREVER ;
 int del_timer_sync (int *) ;
 int list_del (int *) ;
 int tipc_nametbl_unsubscribe (struct tipc_subscription*) ;
 int tipc_sub_put (struct tipc_subscription*) ;

void tipc_sub_unsubscribe(struct tipc_subscription *sub)
{
 tipc_nametbl_unsubscribe(sub);
 if (sub->evt.s.timeout != TIPC_WAIT_FOREVER)
  del_timer_sync(&sub->timer);
 list_del(&sub->sub_list);
 tipc_sub_put(sub);
}
