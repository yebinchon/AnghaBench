
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dsa_switch {int * devlink; TYPE_1__* ops; scalar_t__ slave_mii_bus; } ;
struct TYPE_2__ {int (* teardown ) (struct dsa_switch*) ;scalar_t__ phy_read; } ;


 int devlink_free (int *) ;
 int devlink_unregister (int *) ;
 int dsa_switch_unregister_notifier (struct dsa_switch*) ;
 int mdiobus_unregister (scalar_t__) ;
 int stub1 (struct dsa_switch*) ;

__attribute__((used)) static void dsa_switch_teardown(struct dsa_switch *ds)
{
 if (ds->slave_mii_bus && ds->ops->phy_read)
  mdiobus_unregister(ds->slave_mii_bus);

 dsa_switch_unregister_notifier(ds);

 if (ds->ops->teardown)
  ds->ops->teardown(ds);

 if (ds->devlink) {
  devlink_unregister(ds->devlink);
  devlink_free(ds->devlink);
  ds->devlink = ((void*)0);
 }

}
