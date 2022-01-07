
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch_tree {struct dsa_switch** ds; } ;
struct dsa_switch {int num_ports; struct dsa_port* ports; } ;
struct dsa_port {struct device_node* dn; } ;
struct device_node {int dummy; } ;


 int DSA_MAX_SWITCHES ;

__attribute__((used)) static struct dsa_port *dsa_tree_find_port_by_node(struct dsa_switch_tree *dst,
         struct device_node *dn)
{
 struct dsa_switch *ds;
 struct dsa_port *dp;
 int device, port;

 for (device = 0; device < DSA_MAX_SWITCHES; device++) {
  ds = dst->ds[device];
  if (!ds)
   continue;

  for (port = 0; port < ds->num_ports; port++) {
   dp = &ds->ports[port];

   if (dp->dn == dn)
    return dp;
  }
 }

 return ((void*)0);
}
