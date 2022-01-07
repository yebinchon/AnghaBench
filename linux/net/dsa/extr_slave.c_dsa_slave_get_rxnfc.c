
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_rxnfc {int dummy; } ;
struct dsa_switch {TYPE_1__* ops; } ;
struct dsa_port {int index; struct dsa_switch* ds; } ;
struct TYPE_2__ {int (* get_rxnfc ) (struct dsa_switch*,int ,struct ethtool_rxnfc*,int *) ;} ;


 int EOPNOTSUPP ;
 struct dsa_port* dsa_slave_to_port (struct net_device*) ;
 int stub1 (struct dsa_switch*,int ,struct ethtool_rxnfc*,int *) ;

__attribute__((used)) static int dsa_slave_get_rxnfc(struct net_device *dev,
          struct ethtool_rxnfc *nfc, u32 *rule_locs)
{
 struct dsa_port *dp = dsa_slave_to_port(dev);
 struct dsa_switch *ds = dp->ds;

 if (!ds->ops->get_rxnfc)
  return -EOPNOTSUPP;

 return ds->ops->get_rxnfc(ds, dp->index, nfc, rule_locs);
}
