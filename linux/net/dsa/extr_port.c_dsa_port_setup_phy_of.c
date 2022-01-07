
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dev; } ;
struct phy_device {TYPE_2__ mdio; } ;
struct dsa_switch {int dev; TYPE_1__* ops; } ;
struct dsa_port {int index; struct dsa_switch* ds; } ;
struct TYPE_3__ {int (* adjust_link ) (struct dsa_switch*,int,struct phy_device*) ;} ;


 scalar_t__ IS_ERR (struct phy_device*) ;
 int PTR_ERR (struct phy_device*) ;
 int dev_dbg (int ,char*,int ) ;
 struct phy_device* dsa_port_get_phy_device (struct dsa_port*) ;
 int genphy_read_status (struct phy_device*) ;
 int genphy_resume (struct phy_device*) ;
 int genphy_suspend (struct phy_device*) ;
 int phydev_name (struct phy_device*) ;
 int put_device (int *) ;
 int stub1 (struct dsa_switch*,int,struct phy_device*) ;

__attribute__((used)) static int dsa_port_setup_phy_of(struct dsa_port *dp, bool enable)
{
 struct dsa_switch *ds = dp->ds;
 struct phy_device *phydev;
 int port = dp->index;
 int err = 0;

 phydev = dsa_port_get_phy_device(dp);
 if (!phydev)
  return 0;

 if (IS_ERR(phydev))
  return PTR_ERR(phydev);

 if (enable) {
  err = genphy_resume(phydev);
  if (err < 0)
   goto err_put_dev;

  err = genphy_read_status(phydev);
  if (err < 0)
   goto err_put_dev;
 } else {
  err = genphy_suspend(phydev);
  if (err < 0)
   goto err_put_dev;
 }

 if (ds->ops->adjust_link)
  ds->ops->adjust_link(ds, port, phydev);

 dev_dbg(ds->dev, "enabled port's phy: %s", phydev_name(phydev));

err_put_dev:
 put_device(&phydev->mdio.dev);
 return err;
}
