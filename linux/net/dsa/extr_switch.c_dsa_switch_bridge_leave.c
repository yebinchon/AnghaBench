
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct switchdev_trans {int member_0; } ;
struct dsa_switch {scalar_t__ index; int num_ports; int * ports; scalar_t__ vlan_filtering_is_global; TYPE_1__* ops; } ;
struct dsa_notifier_bridge_info {scalar_t__ br; scalar_t__ sw_index; int port; } ;
struct TYPE_4__ {scalar_t__ bridge_dev; } ;
struct TYPE_3__ {int (* crosschip_bridge_leave ) (struct dsa_switch*,scalar_t__,int,scalar_t__) ;int (* port_bridge_leave ) (struct dsa_switch*,int,scalar_t__) ;} ;


 int EOPNOTSUPP ;
 int br_vlan_enabled (scalar_t__) ;
 int dsa_port_vlan_filtering (int *,int,struct switchdev_trans*) ;
 TYPE_2__* dsa_to_port (struct dsa_switch*,int) ;
 int stub1 (struct dsa_switch*,int,scalar_t__) ;
 int stub2 (struct dsa_switch*,scalar_t__,int,scalar_t__) ;

__attribute__((used)) static int dsa_switch_bridge_leave(struct dsa_switch *ds,
       struct dsa_notifier_bridge_info *info)
{
 bool unset_vlan_filtering = br_vlan_enabled(info->br);
 int err, i;

 if (ds->index == info->sw_index && ds->ops->port_bridge_leave)
  ds->ops->port_bridge_leave(ds, info->port, info->br);

 if (ds->index != info->sw_index && ds->ops->crosschip_bridge_leave)
  ds->ops->crosschip_bridge_leave(ds, info->sw_index, info->port,
      info->br);
 if (unset_vlan_filtering && ds->vlan_filtering_is_global) {
  for (i = 0; i < ds->num_ports; i++) {
   if (i == info->port)
    continue;
   if (dsa_to_port(ds, i)->bridge_dev == info->br) {
    unset_vlan_filtering = 0;
    break;
   }
  }
 }
 if (unset_vlan_filtering) {
  struct switchdev_trans trans = {0};

  err = dsa_port_vlan_filtering(&ds->ports[info->port],
           0, &trans);
  if (err && err != EOPNOTSUPP)
   return err;
 }
 return 0;
}
