
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch {int dummy; } ;
struct dsa_port {int pl; } ;


 struct dsa_port* dsa_to_port (struct dsa_switch*,int) ;
 int phylink_mac_change (int ,int) ;

void dsa_port_phylink_mac_change(struct dsa_switch *ds, int port, bool up)
{
 const struct dsa_port *dp = dsa_to_port(ds, port);

 phylink_mac_change(dp->pl, up);
}
