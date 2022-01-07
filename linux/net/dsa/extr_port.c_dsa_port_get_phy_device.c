
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct dsa_port {int dn; } ;
struct device_node {int dummy; } ;


 int EPROBE_DEFER ;
 struct phy_device* ERR_PTR (int ) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;
 struct phy_device* of_phy_find_device (struct device_node*) ;

__attribute__((used)) static struct phy_device *dsa_port_get_phy_device(struct dsa_port *dp)
{
 struct device_node *phy_dn;
 struct phy_device *phydev;

 phy_dn = of_parse_phandle(dp->dn, "phy-handle", 0);
 if (!phy_dn)
  return ((void*)0);

 phydev = of_phy_find_device(phy_dn);
 if (!phydev) {
  of_node_put(phy_dn);
  return ERR_PTR(-EPROBE_DEFER);
 }

 of_node_put(phy_dn);
 return phydev;
}
