
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_dev_priv {int nr_egress_mappings; int nr_ingress_mappings; } ;
struct net_device {int dummy; } ;
struct ifla_vlan_flags {int dummy; } ;


 size_t nla_total_size (int) ;
 struct vlan_dev_priv* vlan_dev_priv (struct net_device const*) ;
 size_t vlan_qos_map_size (int ) ;

__attribute__((used)) static size_t vlan_get_size(const struct net_device *dev)
{
 struct vlan_dev_priv *vlan = vlan_dev_priv(dev);

 return nla_total_size(2) +
        nla_total_size(2) +
        nla_total_size(sizeof(struct ifla_vlan_flags)) +
        vlan_qos_map_size(vlan->nr_ingress_mappings) +
        vlan_qos_map_size(vlan->nr_egress_mappings);
}
