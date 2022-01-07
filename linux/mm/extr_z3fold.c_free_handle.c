
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z3fold_pool {int c_handle; } ;
struct z3fold_buddy_slots {scalar_t__* slot; } ;


 int BUDDY_MASK ;
 int PAGE_HEADLESS ;
 int WARN_ON (int) ;
 struct z3fold_buddy_slots* handle_to_slots (unsigned long) ;
 int kmem_cache_free (int ,struct z3fold_buddy_slots*) ;
 struct z3fold_pool* slots_to_pool (struct z3fold_buddy_slots*) ;

__attribute__((used)) static inline void free_handle(unsigned long handle)
{
 struct z3fold_buddy_slots *slots;
 int i;
 bool is_free;

 if (handle & (1 << PAGE_HEADLESS))
  return;

 WARN_ON(*(unsigned long *)handle == 0);
 *(unsigned long *)handle = 0;
 slots = handle_to_slots(handle);
 is_free = 1;
 for (i = 0; i <= BUDDY_MASK; i++) {
  if (slots->slot[i]) {
   is_free = 0;
   break;
  }
 }

 if (is_free) {
  struct z3fold_pool *pool = slots_to_pool(slots);

  kmem_cache_free(pool->c_handle, slots);
 }
}
