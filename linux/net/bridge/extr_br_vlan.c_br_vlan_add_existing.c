
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct netlink_ext_ack {int dummy; } ;
struct net_bridge_vlan_group {int num_vlans; } ;
struct net_bridge_vlan {int flags; int vid; int refcnt; } ;
struct net_bridge {TYPE_1__* dev; } ;
struct TYPE_3__ {int dev_addr; } ;


 int BRIDGE_VLAN_INFO_BRENTRY ;
 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ __vlan_add_flags (struct net_bridge_vlan*,int) ;
 int br_err (struct net_bridge*,char*) ;
 int br_fdb_insert (struct net_bridge*,int *,int ,int ) ;
 int br_switchdev_port_vlan_add (TYPE_1__*,int ,int,struct netlink_ext_ack*) ;
 int br_switchdev_port_vlan_del (TYPE_1__*,int ) ;
 int br_vlan_is_brentry (struct net_bridge_vlan*) ;
 int refcount_inc (int *) ;

__attribute__((used)) static int br_vlan_add_existing(struct net_bridge *br,
    struct net_bridge_vlan_group *vg,
    struct net_bridge_vlan *vlan,
    u16 flags, bool *changed,
    struct netlink_ext_ack *extack)
{
 int err;

 err = br_switchdev_port_vlan_add(br->dev, vlan->vid, flags, extack);
 if (err && err != -EOPNOTSUPP)
  return err;

 if (!br_vlan_is_brentry(vlan)) {

  if (!(flags & BRIDGE_VLAN_INFO_BRENTRY)) {
   err = -EINVAL;
   goto err_flags;
  }

  err = br_fdb_insert(br, ((void*)0), br->dev->dev_addr,
        vlan->vid);
  if (err) {
   br_err(br, "failed to insert local address into bridge forwarding table\n");
   goto err_fdb_insert;
  }

  refcount_inc(&vlan->refcnt);
  vlan->flags |= BRIDGE_VLAN_INFO_BRENTRY;
  vg->num_vlans++;
  *changed = 1;
 }

 if (__vlan_add_flags(vlan, flags))
  *changed = 1;

 return 0;

err_fdb_insert:
err_flags:
 br_switchdev_port_vlan_del(br->dev, vlan->vid);
 return err;
}
