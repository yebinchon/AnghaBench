
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dsa_switch {int dev; } ;
struct TYPE_2__ {int type; int dev; } ;
struct dsa_port {int pl; TYPE_1__ pl_config; struct device_node* dn; struct dsa_switch* ds; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (int ) ;
 int PHYLINK_DEV ;
 int PHY_INTERFACE_MODE_NA ;
 int PTR_ERR (int ) ;
 int dsa_port_phylink_mac_ops ;
 int of_fwnode_handle (struct device_node*) ;
 int of_get_phy_mode (struct device_node*) ;
 int phylink_create (TYPE_1__*,int ,int,int *) ;
 int phylink_destroy (int ) ;
 int phylink_of_phy_connect (int ,struct device_node*,int ) ;
 int phylink_start (int ) ;
 int pr_err (char*,int) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static int dsa_port_phylink_register(struct dsa_port *dp)
{
 struct dsa_switch *ds = dp->ds;
 struct device_node *port_dn = dp->dn;
 int mode, err;

 mode = of_get_phy_mode(port_dn);
 if (mode < 0)
  mode = PHY_INTERFACE_MODE_NA;

 dp->pl_config.dev = ds->dev;
 dp->pl_config.type = PHYLINK_DEV;

 dp->pl = phylink_create(&dp->pl_config, of_fwnode_handle(port_dn),
    mode, &dsa_port_phylink_mac_ops);
 if (IS_ERR(dp->pl)) {
  pr_err("error creating PHYLINK: %ld\n", PTR_ERR(dp->pl));
  return PTR_ERR(dp->pl);
 }

 err = phylink_of_phy_connect(dp->pl, port_dn, 0);
 if (err && err != -ENODEV) {
  pr_err("could not attach to PHY: %d\n", err);
  goto err_phy_connect;
 }

 rtnl_lock();
 phylink_start(dp->pl);
 rtnl_unlock();

 return 0;

err_phy_connect:
 phylink_destroy(dp->pl);
 return err;
}
