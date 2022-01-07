
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dsa_switch {int dev; TYPE_1__* ops; } ;
struct dsa_port {int dn; struct dsa_switch* ds; } ;
struct TYPE_2__ {int adjust_link; } ;


 int dev_warn (int ,char*) ;
 int dsa_port_fixed_link_register_of (struct dsa_port*) ;
 int dsa_port_phylink_register (struct dsa_port*) ;
 int dsa_port_setup_phy_of (struct dsa_port*,int) ;
 scalar_t__ of_phy_is_fixed_link (int ) ;

int dsa_port_link_register_of(struct dsa_port *dp)
{
 struct dsa_switch *ds = dp->ds;

 if (!ds->ops->adjust_link)
  return dsa_port_phylink_register(dp);

 dev_warn(ds->dev,
   "Using legacy PHYLIB callbacks. Please migrate to PHYLINK!\n");

 if (of_phy_is_fixed_link(dp->dn))
  return dsa_port_fixed_link_register_of(dp);
 else
  return dsa_port_setup_phy_of(dp, 1);
}
