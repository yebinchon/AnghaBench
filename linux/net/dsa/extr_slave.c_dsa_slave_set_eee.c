
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int phydev; } ;
struct ethtool_eee {int dummy; } ;
struct dsa_switch {TYPE_1__* ops; } ;
struct dsa_port {int pl; int index; struct dsa_switch* ds; } ;
struct TYPE_2__ {int (* set_mac_eee ) (struct dsa_switch*,int ,struct ethtool_eee*) ;} ;


 int ENODEV ;
 int EOPNOTSUPP ;
 struct dsa_port* dsa_slave_to_port (struct net_device*) ;
 int phylink_ethtool_set_eee (int ,struct ethtool_eee*) ;
 int stub1 (struct dsa_switch*,int ,struct ethtool_eee*) ;

__attribute__((used)) static int dsa_slave_set_eee(struct net_device *dev, struct ethtool_eee *e)
{
 struct dsa_port *dp = dsa_slave_to_port(dev);
 struct dsa_switch *ds = dp->ds;
 int ret;


 if (!dev->phydev || !dp->pl)
  return -ENODEV;

 if (!ds->ops->set_mac_eee)
  return -EOPNOTSUPP;

 ret = ds->ops->set_mac_eee(ds, dp->index, e);
 if (ret)
  return ret;

 return phylink_ethtool_set_eee(dp->pl, e);
}
