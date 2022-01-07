
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dsa_switch {int * devlink; int slave_mii_bus; int dev; TYPE_1__* ops; int phys_mii_mask; } ;
struct TYPE_2__ {int (* setup ) (struct dsa_switch*) ;scalar_t__ phy_read; } ;


 int ENOMEM ;
 int * devlink_alloc (int *,int ) ;
 int devlink_free (int *) ;
 int devlink_register (int *,int ) ;
 int devlink_unregister (int *) ;
 int devm_mdiobus_alloc (int ) ;
 int dsa_devlink_ops ;
 int dsa_slave_mii_bus_init (struct dsa_switch*) ;
 int dsa_switch_register_notifier (struct dsa_switch*) ;
 int dsa_switch_unregister_notifier (struct dsa_switch*) ;
 int dsa_user_ports (struct dsa_switch*) ;
 int mdiobus_register (int ) ;
 int stub1 (struct dsa_switch*) ;

__attribute__((used)) static int dsa_switch_setup(struct dsa_switch *ds)
{
 int err = 0;






 ds->phys_mii_mask |= dsa_user_ports(ds);




 ds->devlink = devlink_alloc(&dsa_devlink_ops, 0);
 if (!ds->devlink)
  return -ENOMEM;

 err = devlink_register(ds->devlink, ds->dev);
 if (err)
  goto free_devlink;

 err = dsa_switch_register_notifier(ds);
 if (err)
  goto unregister_devlink;

 err = ds->ops->setup(ds);
 if (err < 0)
  goto unregister_notifier;

 if (!ds->slave_mii_bus && ds->ops->phy_read) {
  ds->slave_mii_bus = devm_mdiobus_alloc(ds->dev);
  if (!ds->slave_mii_bus) {
   err = -ENOMEM;
   goto unregister_notifier;
  }

  dsa_slave_mii_bus_init(ds);

  err = mdiobus_register(ds->slave_mii_bus);
  if (err < 0)
   goto unregister_notifier;
 }

 return 0;

unregister_notifier:
 dsa_switch_unregister_notifier(ds);
unregister_devlink:
 devlink_unregister(ds->devlink);
free_devlink:
 devlink_free(ds->devlink);
 ds->devlink = ((void*)0);

 return err;
}
