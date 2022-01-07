
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dsa_switch {TYPE_1__* ops; } ;
struct dsa_port {int dn; int pl; struct dsa_switch* ds; } ;
struct TYPE_2__ {int adjust_link; } ;


 int dsa_port_setup_phy_of (struct dsa_port*,int) ;
 int of_phy_deregister_fixed_link (int ) ;
 scalar_t__ of_phy_is_fixed_link (int ) ;
 int phylink_destroy (int ) ;
 int phylink_disconnect_phy (int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

void dsa_port_link_unregister_of(struct dsa_port *dp)
{
 struct dsa_switch *ds = dp->ds;

 if (!ds->ops->adjust_link) {
  rtnl_lock();
  phylink_disconnect_phy(dp->pl);
  rtnl_unlock();
  phylink_destroy(dp->pl);
  return;
 }

 if (of_phy_is_fixed_link(dp->dn))
  of_phy_deregister_fixed_link(dp->dn);
 else
  dsa_port_setup_phy_of(dp, 0);
}
