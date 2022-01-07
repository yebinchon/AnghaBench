
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct net_bridge {scalar_t__ stp_enabled; int lock; scalar_t__ hello_time; int hello_timer; TYPE_1__* dev; } ;
struct TYPE_2__ {int flags; } ;


 scalar_t__ BR_KERNEL_STP ;
 int IFF_UP ;
 struct net_bridge* br ;
 int br_config_bpdu_generation (struct net_bridge*) ;
 int br_debug (struct net_bridge*,char*) ;
 struct net_bridge* from_timer (int ,struct timer_list*,int ) ;
 int hello_timer ;
 scalar_t__ jiffies ;
 int mod_timer (int *,int ) ;
 int round_jiffies (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void br_hello_timer_expired(struct timer_list *t)
{
 struct net_bridge *br = from_timer(br, t, hello_timer);

 br_debug(br, "hello timer expired\n");
 spin_lock(&br->lock);
 if (br->dev->flags & IFF_UP) {
  br_config_bpdu_generation(br);

  if (br->stp_enabled == BR_KERNEL_STP)
   mod_timer(&br->hello_timer,
      round_jiffies(jiffies + br->hello_time));
 }
 spin_unlock(&br->lock);
}
