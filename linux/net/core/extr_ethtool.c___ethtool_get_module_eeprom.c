
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct phy_device {TYPE_1__* drv; } ;
struct net_device {scalar_t__ sfp_bus; struct phy_device* phydev; struct ethtool_ops* ethtool_ops; } ;
struct ethtool_ops {int (* get_module_eeprom ) (struct net_device*,struct ethtool_eeprom*,int *) ;} ;
struct ethtool_eeprom {int dummy; } ;
struct TYPE_2__ {int (* module_eeprom ) (struct phy_device*,struct ethtool_eeprom*,int *) ;} ;


 int EOPNOTSUPP ;
 int sfp_get_module_eeprom (scalar_t__,struct ethtool_eeprom*,int *) ;
 int stub1 (struct phy_device*,struct ethtool_eeprom*,int *) ;
 int stub2 (struct net_device*,struct ethtool_eeprom*,int *) ;

__attribute__((used)) static int __ethtool_get_module_eeprom(struct net_device *dev,
           struct ethtool_eeprom *ee, u8 *data)
{
 const struct ethtool_ops *ops = dev->ethtool_ops;
 struct phy_device *phydev = dev->phydev;

 if (dev->sfp_bus)
  return sfp_get_module_eeprom(dev->sfp_bus, ee, data);

 if (phydev && phydev->drv && phydev->drv->module_eeprom)
  return phydev->drv->module_eeprom(phydev, ee, data);

 if (ops->get_module_eeprom)
  return ops->get_module_eeprom(dev, ee, data);

 return -EOPNOTSUPP;
}
