
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch_tree {struct dsa_switch** ds; } ;
struct dsa_switch {int dummy; } ;


 int DSA_MAX_SWITCHES ;
 int dsa_switch_setup_routing_table (struct dsa_switch*) ;

__attribute__((used)) static bool dsa_tree_setup_routing_table(struct dsa_switch_tree *dst)
{
 struct dsa_switch *ds;
 bool complete = 1;
 int device;

 for (device = 0; device < DSA_MAX_SWITCHES; device++) {
  ds = dst->ds[device];
  if (!ds)
   continue;

  complete = dsa_switch_setup_routing_table(ds);
  if (!complete)
   break;
 }

 return complete;
}
