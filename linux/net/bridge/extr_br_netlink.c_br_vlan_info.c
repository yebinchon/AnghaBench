
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct net_bridge_port {struct net_bridge* br; } ;
struct net_bridge {int dummy; } ;
struct bridge_vlan_info {int flags; int vid; } ;


 int BRIDGE_VLAN_INFO_BRENTRY ;
 int BRIDGE_VLAN_INFO_MASTER ;


 int br_vlan_add (struct net_bridge*,int ,int,int*,struct netlink_ext_ack*) ;
 int br_vlan_delete (struct net_bridge*,int ) ;
 int nbp_vlan_add (struct net_bridge_port*,int ,int,int*,struct netlink_ext_ack*) ;
 int nbp_vlan_delete (struct net_bridge_port*,int ) ;

__attribute__((used)) static int br_vlan_info(struct net_bridge *br, struct net_bridge_port *p,
   int cmd, struct bridge_vlan_info *vinfo, bool *changed,
   struct netlink_ext_ack *extack)
{
 bool curr_change;
 int err = 0;

 switch (cmd) {
 case 128:
  if (p) {



   err = nbp_vlan_add(p, vinfo->vid, vinfo->flags,
        &curr_change, extack);
  } else {
   vinfo->flags |= BRIDGE_VLAN_INFO_BRENTRY;
   err = br_vlan_add(br, vinfo->vid, vinfo->flags,
       &curr_change, extack);
  }
  if (curr_change)
   *changed = 1;
  break;

 case 129:
  if (p) {
   if (!nbp_vlan_delete(p, vinfo->vid))
    *changed = 1;

   if ((vinfo->flags & BRIDGE_VLAN_INFO_MASTER) &&
       !br_vlan_delete(p->br, vinfo->vid))
    *changed = 1;
  } else if (!br_vlan_delete(br, vinfo->vid)) {
   *changed = 1;
  }
  break;
 }

 return err;
}
