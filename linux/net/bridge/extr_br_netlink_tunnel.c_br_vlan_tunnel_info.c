
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct net_bridge_port {int dummy; } ;


 int EINVAL ;


 int nbp_vlan_tunnel_info_add (struct net_bridge_port*,int ,int ) ;
 int nbp_vlan_tunnel_info_delete (struct net_bridge_port*,int ) ;

__attribute__((used)) static int br_vlan_tunnel_info(struct net_bridge_port *p, int cmd,
          u16 vid, u32 tun_id, bool *changed)
{
 int err = 0;

 if (!p)
  return -EINVAL;

 switch (cmd) {
 case 128:
  err = nbp_vlan_tunnel_info_add(p, vid, tun_id);
  if (!err)
   *changed = 1;
  break;
 case 129:
  if (!nbp_vlan_tunnel_info_delete(p, vid))
   *changed = 1;
  break;
 }

 return err;
}
