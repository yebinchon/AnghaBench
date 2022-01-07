
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int dev; } ;
struct phy_device {TYPE_1__ mdio; } ;
struct dsa_port {int dn; } ;


 int EOPNOTSUPP ;
 scalar_t__ IS_ERR_OR_NULL (struct phy_device*) ;
 struct phy_device* dsa_port_get_phy_device (struct dsa_port*) ;
 scalar_t__ of_phy_is_fixed_link (int ) ;
 int phy_ethtool_get_strings (struct phy_device*,int *) ;
 int put_device (int *) ;

int dsa_port_get_phy_strings(struct dsa_port *dp, uint8_t *data)
{
 struct phy_device *phydev;
 int ret = -EOPNOTSUPP;

 if (of_phy_is_fixed_link(dp->dn))
  return ret;

 phydev = dsa_port_get_phy_device(dp);
 if (IS_ERR_OR_NULL(phydev))
  return ret;

 ret = phy_ethtool_get_strings(phydev, data);
 put_device(&phydev->mdio.dev);

 return ret;
}
