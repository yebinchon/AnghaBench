
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_wolinfo {int dummy; } ;
struct dsa_switch {TYPE_1__* ops; } ;
struct dsa_port {int index; int pl; struct dsa_switch* ds; } ;
struct TYPE_2__ {int (* get_wol ) (struct dsa_switch*,int ,struct ethtool_wolinfo*) ;} ;


 struct dsa_port* dsa_slave_to_port (struct net_device*) ;
 int phylink_ethtool_get_wol (int ,struct ethtool_wolinfo*) ;
 int stub1 (struct dsa_switch*,int ,struct ethtool_wolinfo*) ;

__attribute__((used)) static void dsa_slave_get_wol(struct net_device *dev, struct ethtool_wolinfo *w)
{
 struct dsa_port *dp = dsa_slave_to_port(dev);
 struct dsa_switch *ds = dp->ds;

 phylink_ethtool_get_wol(dp->pl, w);

 if (ds->ops->get_wol)
  ds->ops->get_wol(ds, dp->index, w);
}
