
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z3fold_pool {int c_handle; } ;
struct z3fold_buddy_slots {unsigned long pool; int slot; } ;
typedef int gfp_t ;


 int __GFP_HIGHMEM ;
 int __GFP_MOVABLE ;
 struct z3fold_buddy_slots* kmem_cache_alloc (int ,int) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static inline struct z3fold_buddy_slots *alloc_slots(struct z3fold_pool *pool,
       gfp_t gfp)
{
 struct z3fold_buddy_slots *slots;

 slots = kmem_cache_alloc(pool->c_handle,
     (gfp & ~(__GFP_HIGHMEM | __GFP_MOVABLE)));

 if (slots) {
  memset(slots->slot, 0, sizeof(slots->slot));
  slots->pool = (unsigned long)pool;
 }

 return slots;
}
