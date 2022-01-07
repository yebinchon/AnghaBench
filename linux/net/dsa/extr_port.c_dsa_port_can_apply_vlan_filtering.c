
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct dsa_switch {int num_ports; int dev; int vlan_filtering_is_global; } ;
struct dsa_port {struct net_device* bridge_dev; struct dsa_switch* ds; } ;
struct TYPE_2__ {struct net_device* bridge_dev; } ;


 int br_vlan_enabled (struct net_device*) ;
 int dev_err (int ,char*) ;
 TYPE_1__* dsa_to_port (struct dsa_switch*,int) ;

__attribute__((used)) static bool dsa_port_can_apply_vlan_filtering(struct dsa_port *dp,
           bool vlan_filtering)
{
 struct dsa_switch *ds = dp->ds;
 int i;

 if (!ds->vlan_filtering_is_global)
  return 1;






 for (i = 0; i < ds->num_ports; i++) {
  struct net_device *other_bridge;

  other_bridge = dsa_to_port(ds, i)->bridge_dev;
  if (!other_bridge)
   continue;



  if (other_bridge == dp->bridge_dev)
   continue;
  if (br_vlan_enabled(other_bridge) != vlan_filtering) {
   dev_err(ds->dev, "VLAN filtering is a global setting\n");
   return 0;
  }
 }
 return 1;
}
