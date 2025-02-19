
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int len; } ;
struct property {TYPE_1__ val; } ;
struct node {struct node* children; } ;


 struct node* get_node_by_path (struct node*,char*) ;
 struct property* get_property (struct node*,char*) ;
 int propval_cell (struct property*) ;

uint32_t guess_boot_cpuid(struct node *tree)
{
 struct node *cpus, *bootcpu;
 struct property *reg;

 cpus = get_node_by_path(tree, "/cpus");
 if (!cpus)
  return 0;


 bootcpu = cpus->children;
 if (!bootcpu)
  return 0;

 reg = get_property(bootcpu, "reg");
 if (!reg || (reg->val.len != sizeof(uint32_t)))
  return 0;



 return propval_cell(reg);
}
