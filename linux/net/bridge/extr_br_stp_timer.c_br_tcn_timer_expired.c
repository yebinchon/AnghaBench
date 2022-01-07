
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct net_bridge {int lock; scalar_t__ bridge_hello_time; int tcn_timer; TYPE_1__* dev; } ;
struct TYPE_2__ {int flags; } ;


 int IFF_UP ;
 struct net_bridge* br ;
 int br_debug (struct net_bridge*,char*) ;
 int br_is_root_bridge (struct net_bridge*) ;
 int br_transmit_tcn (struct net_bridge*) ;
 struct net_bridge* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tcn_timer ;

__attribute__((used)) static void br_tcn_timer_expired(struct timer_list *t)
{
 struct net_bridge *br = from_timer(br, t, tcn_timer);

 br_debug(br, "tcn timer expired\n");
 spin_lock(&br->lock);
 if (!br_is_root_bridge(br) && (br->dev->flags & IFF_UP)) {
  br_transmit_tcn(br);

  mod_timer(&br->tcn_timer, jiffies + br->bridge_hello_time);
 }
 spin_unlock(&br->lock);
}
