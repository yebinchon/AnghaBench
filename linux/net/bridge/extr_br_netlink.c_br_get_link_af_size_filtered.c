
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int priv_flags; } ;
struct net_bridge_vlan_group {int dummy; } ;
struct net_bridge_port {int flags; } ;
struct net_bridge {int dummy; } ;
struct bridge_vlan_info {int dummy; } ;


 int BR_VLAN_TUNNEL ;
 int IFF_EBRIDGE ;
 int br_get_num_vlan_infos (struct net_bridge_vlan_group*,int ) ;
 scalar_t__ br_get_vlan_tunnel_info_size (struct net_bridge_vlan_group*) ;
 struct net_bridge_port* br_port_get_rcu (struct net_device const*) ;
 struct net_bridge_vlan_group* br_vlan_group_rcu (struct net_bridge*) ;
 struct net_bridge_vlan_group* nbp_vlan_group_rcu (struct net_bridge_port*) ;
 struct net_bridge* netdev_priv (struct net_device const*) ;
 scalar_t__ netif_is_bridge_port (struct net_device const*) ;
 int nla_total_size (int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static size_t br_get_link_af_size_filtered(const struct net_device *dev,
        u32 filter_mask)
{
 struct net_bridge_vlan_group *vg = ((void*)0);
 struct net_bridge_port *p = ((void*)0);
 struct net_bridge *br;
 int num_vlan_infos;
 size_t vinfo_sz = 0;

 rcu_read_lock();
 if (netif_is_bridge_port(dev)) {
  p = br_port_get_rcu(dev);
  vg = nbp_vlan_group_rcu(p);
 } else if (dev->priv_flags & IFF_EBRIDGE) {
  br = netdev_priv(dev);
  vg = br_vlan_group_rcu(br);
 }
 num_vlan_infos = br_get_num_vlan_infos(vg, filter_mask);
 rcu_read_unlock();

 if (p && (p->flags & BR_VLAN_TUNNEL))
  vinfo_sz += br_get_vlan_tunnel_info_size(vg);


 vinfo_sz += num_vlan_infos * nla_total_size(sizeof(struct bridge_vlan_info));

 return vinfo_sz;
}
