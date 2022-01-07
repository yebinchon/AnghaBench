
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct dsa_port {struct net_device* bridge_dev; int index; TYPE_1__* ds; } ;
struct dsa_notifier_bridge_info {struct net_device* br; int port; int sw_index; } ;
struct TYPE_2__ {int index; } ;


 int BR_FLOOD ;
 int BR_MCAST_FLOOD ;
 int DSA_NOTIFIER_BRIDGE_JOIN ;
 int dsa_port_bridge_flags (struct dsa_port*,int,int *) ;
 int dsa_port_notify (struct dsa_port*,int ,struct dsa_notifier_bridge_info*) ;

int dsa_port_bridge_join(struct dsa_port *dp, struct net_device *br)
{
 struct dsa_notifier_bridge_info info = {
  .sw_index = dp->ds->index,
  .port = dp->index,
  .br = br,
 };
 int err;


 err = dsa_port_bridge_flags(dp, BR_FLOOD | BR_MCAST_FLOOD, ((void*)0));
 if (err)
  return err;




 dp->bridge_dev = br;

 err = dsa_port_notify(dp, DSA_NOTIFIER_BRIDGE_JOIN, &info);


 if (err) {
  dsa_port_bridge_flags(dp, 0, ((void*)0));
  dp->bridge_dev = ((void*)0);
 }

 return err;
}
