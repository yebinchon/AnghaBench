
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long vlan_filtering; } ;
struct switchdev_attr {TYPE_1__ u; int flags; int id; int orig_dev; } ;
struct net_bridge {int dev; } ;


 int BROPT_VLAN_ENABLED ;
 int EOPNOTSUPP ;
 int SWITCHDEV_ATTR_ID_BRIDGE_VLAN_FILTERING ;
 int SWITCHDEV_F_SKIP_EOPNOTSUPP ;
 int br_manage_promisc (struct net_bridge*) ;
 int br_opt_get (struct net_bridge*,int ) ;
 int br_opt_toggle (struct net_bridge*,int ,int) ;
 int br_recalculate_fwd_mask (struct net_bridge*) ;
 int recalculate_group_addr (struct net_bridge*) ;
 int switchdev_port_attr_set (int ,struct switchdev_attr*) ;

int __br_vlan_filter_toggle(struct net_bridge *br, unsigned long val)
{
 struct switchdev_attr attr = {
  .orig_dev = br->dev,
  .id = SWITCHDEV_ATTR_ID_BRIDGE_VLAN_FILTERING,
  .flags = SWITCHDEV_F_SKIP_EOPNOTSUPP,
  .u.vlan_filtering = val,
 };
 int err;

 if (br_opt_get(br, BROPT_VLAN_ENABLED) == !!val)
  return 0;

 err = switchdev_port_attr_set(br->dev, &attr);
 if (err && err != -EOPNOTSUPP)
  return err;

 br_opt_toggle(br, BROPT_VLAN_ENABLED, !!val);
 br_manage_promisc(br);
 recalculate_group_addr(br);
 br_recalculate_fwd_mask(br);

 return 0;
}
