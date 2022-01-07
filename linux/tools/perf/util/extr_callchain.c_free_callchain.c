
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct callchain_root {int node; } ;
struct TYPE_2__ {int use_callchain; } ;


 int free_callchain_node (int *) ;
 TYPE_1__ symbol_conf ;

void free_callchain(struct callchain_root *root)
{
 if (!symbol_conf.use_callchain)
  return;

 free_callchain_node(&root->node);
}
