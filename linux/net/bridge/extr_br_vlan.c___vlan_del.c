
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_bridge_vlan_group {int vlan_hash; int num_vlans; } ;
struct net_bridge_vlan {int rcu; int vid; int vnode; int flags; TYPE_1__* br; struct net_bridge_vlan* brvlan; struct net_bridge_port* port; } ;
struct net_bridge_port {int br; int dev; } ;
struct TYPE_2__ {int dev; } ;


 int BRIDGE_VLAN_INFO_BRENTRY ;
 int EOPNOTSUPP ;
 int __vlan_del_list (struct net_bridge_vlan*) ;
 int __vlan_delete_pvid (struct net_bridge_vlan_group*,int ) ;
 int __vlan_vid_del (int ,int ,struct net_bridge_vlan*) ;
 int br_switchdev_port_vlan_del (int ,int ) ;
 struct net_bridge_vlan_group* br_vlan_group (TYPE_1__*) ;
 scalar_t__ br_vlan_is_master (struct net_bridge_vlan*) ;
 int br_vlan_put_master (struct net_bridge_vlan*) ;
 int br_vlan_rht_params ;
 scalar_t__ br_vlan_should_use (struct net_bridge_vlan*) ;
 int call_rcu (int *,int ) ;
 struct net_bridge_vlan_group* nbp_vlan_group (struct net_bridge_port*) ;
 int nbp_vlan_rcu_free ;
 int nbp_vlan_set_vlan_dev_state (struct net_bridge_port*,int ) ;
 int rhashtable_remove_fast (int *,int *,int ) ;
 int vlan_tunnel_info_del (struct net_bridge_vlan_group*,struct net_bridge_vlan*) ;

__attribute__((used)) static int __vlan_del(struct net_bridge_vlan *v)
{
 struct net_bridge_vlan *masterv = v;
 struct net_bridge_vlan_group *vg;
 struct net_bridge_port *p = ((void*)0);
 int err = 0;

 if (br_vlan_is_master(v)) {
  vg = br_vlan_group(v->br);
 } else {
  p = v->port;
  vg = nbp_vlan_group(v->port);
  masterv = v->brvlan;
 }

 __vlan_delete_pvid(vg, v->vid);
 if (p) {
  err = __vlan_vid_del(p->dev, p->br, v);
  if (err)
   goto out;
 } else {
  err = br_switchdev_port_vlan_del(v->br->dev, v->vid);
  if (err && err != -EOPNOTSUPP)
   goto out;
  err = 0;
 }

 if (br_vlan_should_use(v)) {
  v->flags &= ~BRIDGE_VLAN_INFO_BRENTRY;
  vg->num_vlans--;
 }

 if (masterv != v) {
  vlan_tunnel_info_del(vg, v);
  rhashtable_remove_fast(&vg->vlan_hash, &v->vnode,
           br_vlan_rht_params);
  __vlan_del_list(v);
  nbp_vlan_set_vlan_dev_state(p, v->vid);
  call_rcu(&v->rcu, nbp_vlan_rcu_free);
 }

 br_vlan_put_master(masterv);
out:
 return err;
}
