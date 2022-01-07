
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch_tree {struct dsa_switch** ds; } ;
struct dsa_switch {int num_ports; struct dsa_port* ports; } ;
struct dsa_port {int dummy; } ;


 int DSA_MAX_SWITCHES ;
 scalar_t__ dsa_port_is_cpu (struct dsa_port*) ;

__attribute__((used)) static struct dsa_port *dsa_tree_find_first_cpu(struct dsa_switch_tree *dst)
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

   if (dsa_port_is_cpu(dp))
    return dp;
  }
 }

 return ((void*)0);
}
