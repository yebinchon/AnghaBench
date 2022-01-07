
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union sidtab_entry_inner {TYPE_3__* ptr_leaf; TYPE_1__* ptr_inner; } ;
typedef int u32 ;
struct sidtab {union sidtab_entry_inner* roots; } ;
struct context {int dummy; } ;
struct TYPE_6__ {TYPE_2__* entries; } ;
struct TYPE_5__ {struct context context; } ;
struct TYPE_4__ {union sidtab_entry_inner* entries; } ;


 int GFP_ATOMIC ;
 int SIDTAB_INNER_SHIFT ;
 int SIDTAB_LEAF_ENTRIES ;
 int SIDTAB_NODE_ALLOC_SIZE ;
 void* kzalloc (int ,int ) ;
 scalar_t__ sidtab_alloc_roots (struct sidtab*,int) ;
 int sidtab_level_from_count (int) ;

__attribute__((used)) static struct context *sidtab_do_lookup(struct sidtab *s, u32 index, int alloc)
{
 union sidtab_entry_inner *entry;
 u32 level, capacity_shift, leaf_index = index / SIDTAB_LEAF_ENTRIES;


 level = sidtab_level_from_count(index + 1);
 capacity_shift = level * SIDTAB_INNER_SHIFT;


 if (alloc && sidtab_alloc_roots(s, level) != 0)
  return ((void*)0);


 entry = &s->roots[level];
 while (level != 0) {
  capacity_shift -= SIDTAB_INNER_SHIFT;
  --level;

  entry = &entry->ptr_inner->entries[leaf_index >> capacity_shift];
  leaf_index &= ((u32)1 << capacity_shift) - 1;

  if (!entry->ptr_inner) {
   if (alloc)
    entry->ptr_inner = kzalloc(SIDTAB_NODE_ALLOC_SIZE,
          GFP_ATOMIC);
   if (!entry->ptr_inner)
    return ((void*)0);
  }
 }
 if (!entry->ptr_leaf) {
  if (alloc)
   entry->ptr_leaf = kzalloc(SIDTAB_NODE_ALLOC_SIZE,
        GFP_ATOMIC);
  if (!entry->ptr_leaf)
   return ((void*)0);
 }
 return &entry->ptr_leaf->entries[index % SIDTAB_LEAF_ENTRIES].context;
}
