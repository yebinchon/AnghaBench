
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {scalar_t__ stp_enabled; int lock; } ;


 scalar_t__ BR_NO_STP ;
 scalar_t__ BR_USER_STP ;
 int br_err (struct net_bridge*,char*,int) ;
 int br_port_state_selection (struct net_bridge*) ;
 int br_stp_call_user (struct net_bridge*,char*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void br_stp_stop(struct net_bridge *br)
{
 int err;

 if (br->stp_enabled == BR_USER_STP) {
  err = br_stp_call_user(br, "stop");
  if (err)
   br_err(br, "failed to stop userspace STP (%d)\n", err);


  spin_lock_bh(&br->lock);
  br_port_state_selection(br);
  spin_unlock_bh(&br->lock);
 }

 br->stp_enabled = BR_NO_STP;
}
