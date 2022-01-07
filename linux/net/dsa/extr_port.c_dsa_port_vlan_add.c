
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switchdev_trans {int dummy; } ;
struct switchdev_obj_port_vlan {int dummy; } ;
struct dsa_port {int index; TYPE_1__* ds; } ;
struct dsa_notifier_vlan_info {struct switchdev_obj_port_vlan const* vlan; struct switchdev_trans* trans; int port; int sw_index; } ;
struct TYPE_2__ {int index; } ;


 int DSA_NOTIFIER_VLAN_ADD ;
 int dsa_port_notify (struct dsa_port*,int ,struct dsa_notifier_vlan_info*) ;

int dsa_port_vlan_add(struct dsa_port *dp,
        const struct switchdev_obj_port_vlan *vlan,
        struct switchdev_trans *trans)
{
 struct dsa_notifier_vlan_info info = {
  .sw_index = dp->ds->index,
  .port = dp->index,
  .trans = trans,
  .vlan = vlan,
 };

 return dsa_port_notify(dp, DSA_NOTIFIER_VLAN_ADD, &info);
}
