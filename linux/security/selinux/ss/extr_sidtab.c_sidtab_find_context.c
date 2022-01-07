
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union sidtab_entry_inner {struct sidtab_node_leaf* ptr_leaf; struct sidtab_node_inner* ptr_inner; } ;
typedef scalar_t__ u32 ;
struct sidtab_node_leaf {TYPE_1__* entries; } ;
struct sidtab_node_inner {union sidtab_entry_inner* entries; } ;
struct context {int dummy; } ;
struct TYPE_2__ {int context; } ;


 int ENOENT ;
 scalar_t__ SIDTAB_INNER_ENTRIES ;
 scalar_t__ SIDTAB_LEAF_ENTRIES ;
 scalar_t__ context_cmp (int *,struct context*) ;

__attribute__((used)) static int sidtab_find_context(union sidtab_entry_inner entry,
          u32 *pos, u32 count, u32 level,
          struct context *context, u32 *index)
{
 int rc;
 u32 i;

 if (level != 0) {
  struct sidtab_node_inner *node = entry.ptr_inner;

  i = 0;
  while (i < SIDTAB_INNER_ENTRIES && *pos < count) {
   rc = sidtab_find_context(node->entries[i],
       pos, count, level - 1,
       context, index);
   if (rc == 0)
    return 0;
   i++;
  }
 } else {
  struct sidtab_node_leaf *node = entry.ptr_leaf;

  i = 0;
  while (i < SIDTAB_LEAF_ENTRIES && *pos < count) {
   if (context_cmp(&node->entries[i].context, context)) {
    *index = *pos;
    return 0;
   }
   (*pos)++;
   i++;
  }
 }
 return -ENOENT;
}
