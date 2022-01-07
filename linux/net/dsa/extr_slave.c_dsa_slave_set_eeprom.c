
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int dummy; } ;
struct dsa_switch {TYPE_1__* ops; } ;
struct dsa_port {struct dsa_switch* ds; } ;
struct TYPE_2__ {int (* set_eeprom ) (struct dsa_switch*,struct ethtool_eeprom*,int *) ;} ;


 int EOPNOTSUPP ;
 struct dsa_port* dsa_slave_to_port (struct net_device*) ;
 int stub1 (struct dsa_switch*,struct ethtool_eeprom*,int *) ;

__attribute__((used)) static int dsa_slave_set_eeprom(struct net_device *dev,
    struct ethtool_eeprom *eeprom, u8 *data)
{
 struct dsa_port *dp = dsa_slave_to_port(dev);
 struct dsa_switch *ds = dp->ds;

 if (ds->ops->set_eeprom)
  return ds->ops->set_eeprom(ds, eeprom, data);

 return -EOPNOTSUPP;
}
