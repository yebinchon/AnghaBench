
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_vlan_group {int vlan_hash; int vlan_list; } ;
struct net_bridge {int default_pvid; int vlgrp; int vlan_proto; } ;


 int ENOMEM ;
 int ETH_P_8021Q ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int br_vlan_rht_params ;
 int htons (int ) ;
 int kfree (struct net_bridge_vlan_group*) ;
 struct net_bridge_vlan_group* kzalloc (int,int ) ;
 int rcu_assign_pointer (int ,struct net_bridge_vlan_group*) ;
 int rhashtable_destroy (int *) ;
 int rhashtable_init (int *,int *) ;
 int vlan_tunnel_init (struct net_bridge_vlan_group*) ;

int br_vlan_init(struct net_bridge *br)
{
 struct net_bridge_vlan_group *vg;
 int ret = -ENOMEM;

 vg = kzalloc(sizeof(*vg), GFP_KERNEL);
 if (!vg)
  goto out;
 ret = rhashtable_init(&vg->vlan_hash, &br_vlan_rht_params);
 if (ret)
  goto err_rhtbl;
 ret = vlan_tunnel_init(vg);
 if (ret)
  goto err_tunnel_init;
 INIT_LIST_HEAD(&vg->vlan_list);
 br->vlan_proto = htons(ETH_P_8021Q);
 br->default_pvid = 1;
 rcu_assign_pointer(br->vlgrp, vg);

out:
 return ret;

err_tunnel_init:
 rhashtable_destroy(&vg->vlan_hash);
err_rhtbl:
 kfree(vg);

 goto out;
}
