
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch_tree {scalar_t__ cpu_dp; struct dsa_switch** ds; } ;
struct dsa_switch {int num_ports; struct dsa_port* ports; } ;
struct dsa_port {scalar_t__ cpu_dp; } ;


 int DSA_MAX_SWITCHES ;
 int EINVAL ;
 scalar_t__ dsa_port_is_dsa (struct dsa_port*) ;
 scalar_t__ dsa_port_is_user (struct dsa_port*) ;
 scalar_t__ dsa_tree_find_first_cpu (struct dsa_switch_tree*) ;
 int pr_warn (char*) ;

__attribute__((used)) static int dsa_tree_setup_default_cpu(struct dsa_switch_tree *dst)
{
 struct dsa_switch *ds;
 struct dsa_port *dp;
 int device, port;


 dst->cpu_dp = dsa_tree_find_first_cpu(dst);
 if (!dst->cpu_dp) {
  pr_warn("Tree has no master device\n");
  return -EINVAL;
 }


 for (device = 0; device < DSA_MAX_SWITCHES; device++) {
  ds = dst->ds[device];
  if (!ds)
   continue;

  for (port = 0; port < ds->num_ports; port++) {
   dp = &ds->ports[port];

   if (dsa_port_is_user(dp) || dsa_port_is_dsa(dp))
    dp->cpu_dp = dst->cpu_dp;
  }
 }

 return 0;
}
