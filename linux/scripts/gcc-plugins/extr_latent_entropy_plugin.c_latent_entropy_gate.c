
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct TYPE_2__ {int preds; } ;


 int DECL_ATTRIBUTES (int ) ;
 scalar_t__ EDGE_COUNT (int ) ;
 TYPE_1__* EXIT_BLOCK_PTR_FOR_FN (int ) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_THIS_VOLATILE (int ) ;
 int cfun ;
 int current_function_decl ;
 scalar_t__ lookup_attribute (char*,int ) ;

__attribute__((used)) static bool latent_entropy_gate(void)
{
 tree list;


 if (TREE_THIS_VOLATILE(current_function_decl))
  return 0;


 if (EDGE_COUNT(EXIT_BLOCK_PTR_FOR_FN(cfun)->preds) == 0)
  return 0;

 list = DECL_ATTRIBUTES(current_function_decl);
 return lookup_attribute("latent_entropy", list) != NULL_TREE;
}
