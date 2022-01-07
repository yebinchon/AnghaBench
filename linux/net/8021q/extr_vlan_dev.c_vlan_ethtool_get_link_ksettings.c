
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_dev_priv {int real_dev; } ;
struct net_device {int dummy; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int __ethtool_get_link_ksettings (int ,struct ethtool_link_ksettings*) ;
 struct vlan_dev_priv* vlan_dev_priv (struct net_device*) ;

__attribute__((used)) static int vlan_ethtool_get_link_ksettings(struct net_device *dev,
        struct ethtool_link_ksettings *cmd)
{
 const struct vlan_dev_priv *vlan = vlan_dev_priv(dev);

 return __ethtool_get_link_ksettings(vlan->real_dev, cmd);
}
