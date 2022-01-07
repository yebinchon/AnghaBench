
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vlan_filtering; } ;
struct switchdev_attr {TYPE_1__ u; int flags; int id; int orig_dev; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_bridge_vlan_group {int vlan_hash; int vlan_list; } ;
struct net_bridge_port {int vlgrp; TYPE_2__* br; int dev; } ;
struct TYPE_4__ {scalar_t__ default_pvid; int dev; } ;


 int BRIDGE_VLAN_INFO_PVID ;
 int BRIDGE_VLAN_INFO_UNTAGGED ;
 int BROPT_VLAN_ENABLED ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int RCU_INIT_POINTER (int ,int *) ;
 int SWITCHDEV_ATTR_ID_BRIDGE_VLAN_FILTERING ;
 int SWITCHDEV_F_SKIP_EOPNOTSUPP ;
 int br_opt_get (TYPE_2__*,int ) ;
 int br_vlan_rht_params ;
 int kfree (struct net_bridge_vlan_group*) ;
 struct net_bridge_vlan_group* kzalloc (int,int ) ;
 int nbp_vlan_add (struct net_bridge_port*,scalar_t__,int,int*,struct netlink_ext_ack*) ;
 int rcu_assign_pointer (int ,struct net_bridge_vlan_group*) ;
 int rhashtable_destroy (int *) ;
 int rhashtable_init (int *,int *) ;
 int switchdev_port_attr_set (int ,struct switchdev_attr*) ;
 int synchronize_rcu () ;
 int vlan_tunnel_deinit (struct net_bridge_vlan_group*) ;
 int vlan_tunnel_init (struct net_bridge_vlan_group*) ;

int nbp_vlan_init(struct net_bridge_port *p, struct netlink_ext_ack *extack)
{
 struct switchdev_attr attr = {
  .orig_dev = p->br->dev,
  .id = SWITCHDEV_ATTR_ID_BRIDGE_VLAN_FILTERING,
  .flags = SWITCHDEV_F_SKIP_EOPNOTSUPP,
  .u.vlan_filtering = br_opt_get(p->br, BROPT_VLAN_ENABLED),
 };
 struct net_bridge_vlan_group *vg;
 int ret = -ENOMEM;

 vg = kzalloc(sizeof(struct net_bridge_vlan_group), GFP_KERNEL);
 if (!vg)
  goto out;

 ret = switchdev_port_attr_set(p->dev, &attr);
 if (ret && ret != -EOPNOTSUPP)
  goto err_vlan_enabled;

 ret = rhashtable_init(&vg->vlan_hash, &br_vlan_rht_params);
 if (ret)
  goto err_rhtbl;
 ret = vlan_tunnel_init(vg);
 if (ret)
  goto err_tunnel_init;
 INIT_LIST_HEAD(&vg->vlan_list);
 rcu_assign_pointer(p->vlgrp, vg);
 if (p->br->default_pvid) {
  bool changed;

  ret = nbp_vlan_add(p, p->br->default_pvid,
       BRIDGE_VLAN_INFO_PVID |
       BRIDGE_VLAN_INFO_UNTAGGED,
       &changed, extack);
  if (ret)
   goto err_vlan_add;
 }
out:
 return ret;

err_vlan_add:
 RCU_INIT_POINTER(p->vlgrp, ((void*)0));
 synchronize_rcu();
 vlan_tunnel_deinit(vg);
err_tunnel_init:
 rhashtable_destroy(&vg->vlan_hash);
err_rhtbl:
err_vlan_enabled:
 kfree(vg);

 goto out;
}
