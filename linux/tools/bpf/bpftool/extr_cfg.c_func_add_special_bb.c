
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct func_node {int bbs; } ;
struct bb_node {int idx; } ;
struct TYPE_2__ {int l; } ;


 int ENTRY_BLOCK_INDEX ;
 int EXIT_BLOCK_INDEX ;
 struct bb_node* func_insert_dummy_bb (int *) ;
 TYPE_1__* func_last_bb (struct func_node*) ;

__attribute__((used)) static bool func_add_special_bb(struct func_node *func)
{
 struct bb_node *bb;

 bb = func_insert_dummy_bb(&func->bbs);
 if (!bb)
  return 1;
 bb->idx = ENTRY_BLOCK_INDEX;

 bb = func_insert_dummy_bb(&func_last_bb(func)->l);
 if (!bb)
  return 1;
 bb->idx = EXIT_BLOCK_INDEX;

 return 0;
}
