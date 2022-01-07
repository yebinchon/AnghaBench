
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union sidtab_entry_inner {TYPE_3__* ptr_leaf; TYPE_1__* ptr_inner; } ;
typedef scalar_t__ u32 ;
struct sidtab_convert_params {int (* func ) (int *,int *,int ) ;int args; } ;
struct TYPE_6__ {TYPE_2__* entries; } ;
struct TYPE_5__ {int context; } ;
struct TYPE_4__ {union sidtab_entry_inner* entries; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ SIDTAB_INNER_ENTRIES ;
 scalar_t__ SIDTAB_LEAF_ENTRIES ;
 int SIDTAB_NODE_ALLOC_SIZE ;
 int cond_resched () ;
 void* kzalloc (int ,int ) ;
 int stub1 (int *,int *,int ) ;

__attribute__((used)) static int sidtab_convert_tree(union sidtab_entry_inner *edst,
          union sidtab_entry_inner *esrc,
          u32 *pos, u32 count, u32 level,
          struct sidtab_convert_params *convert)
{
 int rc;
 u32 i;

 if (level != 0) {
  if (!edst->ptr_inner) {
   edst->ptr_inner = kzalloc(SIDTAB_NODE_ALLOC_SIZE,
        GFP_KERNEL);
   if (!edst->ptr_inner)
    return -ENOMEM;
  }
  i = 0;
  while (i < SIDTAB_INNER_ENTRIES && *pos < count) {
   rc = sidtab_convert_tree(&edst->ptr_inner->entries[i],
       &esrc->ptr_inner->entries[i],
       pos, count, level - 1,
       convert);
   if (rc)
    return rc;
   i++;
  }
 } else {
  if (!edst->ptr_leaf) {
   edst->ptr_leaf = kzalloc(SIDTAB_NODE_ALLOC_SIZE,
       GFP_KERNEL);
   if (!edst->ptr_leaf)
    return -ENOMEM;
  }
  i = 0;
  while (i < SIDTAB_LEAF_ENTRIES && *pos < count) {
   rc = convert->func(&esrc->ptr_leaf->entries[i].context,
        &edst->ptr_leaf->entries[i].context,
        convert->args);
   if (rc)
    return rc;
   (*pos)++;
   i++;
  }
  cond_resched();
 }
 return 0;
}
