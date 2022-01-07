
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dev; } ;
struct dsa_switch {scalar_t__ slave_mii_bus; TYPE_1__* ops; } ;
struct TYPE_4__ {int type; int * dev; } ;
struct dsa_port {int pl; int index; TYPE_2__ pl_config; struct dsa_switch* ds; struct device_node* dn; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {int (* get_phy_flags ) (struct dsa_switch*,int ) ;scalar_t__ phylink_fixed_state; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (int ) ;
 int PHYLINK_NETDEV ;
 int PHY_INTERFACE_MODE_NA ;
 int PTR_ERR (int ) ;
 int dsa_port_phylink_mac_ops ;
 int dsa_slave_phy_connect (struct net_device*,int ) ;
 int dsa_slave_phylink_fixed_state ;
 struct dsa_port* dsa_slave_to_port (struct net_device*) ;
 int netdev_err (struct net_device*,char*,int,...) ;
 int of_fwnode_handle (struct device_node*) ;
 int of_get_phy_mode (struct device_node*) ;
 int phylink_create (TYPE_2__*,int ,int,int *) ;
 int phylink_destroy (int ) ;
 int phylink_fixed_state_cb (int ,int ) ;
 int phylink_of_phy_connect (int ,struct device_node*,int ) ;
 int stub1 (struct dsa_switch*,int ) ;

__attribute__((used)) static int dsa_slave_phy_setup(struct net_device *slave_dev)
{
 struct dsa_port *dp = dsa_slave_to_port(slave_dev);
 struct device_node *port_dn = dp->dn;
 struct dsa_switch *ds = dp->ds;
 u32 phy_flags = 0;
 int mode, ret;

 mode = of_get_phy_mode(port_dn);
 if (mode < 0)
  mode = PHY_INTERFACE_MODE_NA;

 dp->pl_config.dev = &slave_dev->dev;
 dp->pl_config.type = PHYLINK_NETDEV;

 dp->pl = phylink_create(&dp->pl_config, of_fwnode_handle(port_dn), mode,
    &dsa_port_phylink_mac_ops);
 if (IS_ERR(dp->pl)) {
  netdev_err(slave_dev,
      "error creating PHYLINK: %ld\n", PTR_ERR(dp->pl));
  return PTR_ERR(dp->pl);
 }





 if (ds->ops->phylink_fixed_state)
  phylink_fixed_state_cb(dp->pl, dsa_slave_phylink_fixed_state);

 if (ds->ops->get_phy_flags)
  phy_flags = ds->ops->get_phy_flags(ds, dp->index);

 ret = phylink_of_phy_connect(dp->pl, port_dn, phy_flags);
 if (ret == -ENODEV && ds->slave_mii_bus) {



  ret = dsa_slave_phy_connect(slave_dev, dp->index);
  if (ret) {
   netdev_err(slave_dev,
       "failed to connect to port %d: %d\n",
       dp->index, ret);
   phylink_destroy(dp->pl);
   return ret;
  }
 }

 return ret;
}
