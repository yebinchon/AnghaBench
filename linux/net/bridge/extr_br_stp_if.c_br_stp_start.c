
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_bridge {scalar_t__ bridge_forward_delay; int lock; scalar_t__ hello_time; int hello_timer; TYPE_1__* dev; int stp_enabled; } ;
struct TYPE_2__ {int flags; } ;


 int BR_KERNEL_STP ;
 scalar_t__ BR_MAX_FORWARD_DELAY ;
 scalar_t__ BR_MIN_FORWARD_DELAY ;
 int BR_USER_STP ;
 int ENOENT ;
 int IFF_UP ;
 int __br_set_forward_delay (struct net_bridge*,scalar_t__) ;
 int br_debug (struct net_bridge*,char*) ;
 int br_err (struct net_bridge*,char*,int) ;
 int br_port_state_selection (struct net_bridge*) ;
 int br_stp_call_user (struct net_bridge*,char*) ;
 int dev_net (TYPE_1__*) ;
 int init_net ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ net_eq (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void br_stp_start(struct net_bridge *br)
{
 int err = -ENOENT;

 if (net_eq(dev_net(br->dev), &init_net))
  err = br_stp_call_user(br, "start");

 if (err && err != -ENOENT)
  br_err(br, "failed to start userspace STP (%d)\n", err);

 spin_lock_bh(&br->lock);

 if (br->bridge_forward_delay < BR_MIN_FORWARD_DELAY)
  __br_set_forward_delay(br, BR_MIN_FORWARD_DELAY);
 else if (br->bridge_forward_delay > BR_MAX_FORWARD_DELAY)
  __br_set_forward_delay(br, BR_MAX_FORWARD_DELAY);

 if (!err) {
  br->stp_enabled = BR_USER_STP;
  br_debug(br, "userspace STP started\n");
 } else {
  br->stp_enabled = BR_KERNEL_STP;
  br_debug(br, "using kernel STP\n");


  if (br->dev->flags & IFF_UP)
   mod_timer(&br->hello_timer, jiffies + br->hello_time);
  br_port_state_selection(br);
 }

 spin_unlock_bh(&br->lock);
}
