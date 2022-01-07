
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct dsa_port {int * bridge_dev; int index; TYPE_1__* ds; } ;
struct dsa_notifier_bridge_info {struct net_device* br; int port; int sw_index; } ;
struct TYPE_2__ {int index; } ;


 int BR_STATE_FORWARDING ;
 int DSA_NOTIFIER_BRIDGE_LEAVE ;
 int dsa_port_bridge_flags (struct dsa_port*,int ,int *) ;
 int dsa_port_notify (struct dsa_port*,int ,struct dsa_notifier_bridge_info*) ;
 int dsa_port_set_state_now (struct dsa_port*,int ) ;
 int pr_err (char*) ;

void dsa_port_bridge_leave(struct dsa_port *dp, struct net_device *br)
{
 struct dsa_notifier_bridge_info info = {
  .sw_index = dp->ds->index,
  .port = dp->index,
  .br = br,
 };
 int err;




 dp->bridge_dev = ((void*)0);

 err = dsa_port_notify(dp, DSA_NOTIFIER_BRIDGE_LEAVE, &info);
 if (err)
  pr_err("DSA: failed to notify DSA_NOTIFIER_BRIDGE_LEAVE\n");


 dsa_port_bridge_flags(dp, 0, ((void*)0));




 dsa_port_set_state_now(dp, BR_STATE_FORWARDING);
}
