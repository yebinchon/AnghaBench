
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch_tree {struct dsa_switch** ds; } ;
struct dsa_switch {int num_ports; struct dsa_port* ports; } ;
struct dsa_port {int dummy; } ;


 int DSA_MAX_SWITCHES ;
 int dsa_port_setup (struct dsa_port*) ;
 int dsa_port_teardown (struct dsa_port*) ;
 int dsa_switch_setup (struct dsa_switch*) ;
 int dsa_switch_teardown (struct dsa_switch*) ;

__attribute__((used)) static int dsa_tree_setup_switches(struct dsa_switch_tree *dst)
{
 struct dsa_switch *ds;
 struct dsa_port *dp;
 int device, port, i;
 int err = 0;

 for (device = 0; device < DSA_MAX_SWITCHES; device++) {
  ds = dst->ds[device];
  if (!ds)
   continue;

  err = dsa_switch_setup(ds);
  if (err)
   goto switch_teardown;

  for (port = 0; port < ds->num_ports; port++) {
   dp = &ds->ports[port];

   err = dsa_port_setup(dp);
   if (err)
    goto ports_teardown;
  }
 }

 return 0;

ports_teardown:
 for (i = 0; i < port; i++)
  dsa_port_teardown(&ds->ports[i]);

 dsa_switch_teardown(ds);

switch_teardown:
 for (i = 0; i < device; i++) {
  ds = dst->ds[i];
  if (!ds)
   continue;

  for (port = 0; port < ds->num_ports; port++) {
   dp = &ds->ports[port];

   dsa_port_teardown(dp);
  }

  dsa_switch_teardown(ds);
 }

 return err;
}
