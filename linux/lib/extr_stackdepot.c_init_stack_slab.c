
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t depot_index ;
 int next_slab_inited ;
 scalar_t__ smp_load_acquire (int *) ;
 int smp_store_release (int *,int) ;
 int ** stack_slabs ;

__attribute__((used)) static bool init_stack_slab(void **prealloc)
{
 if (!*prealloc)
  return 0;




 if (smp_load_acquire(&next_slab_inited))
  return 1;
 if (stack_slabs[depot_index] == ((void*)0)) {
  stack_slabs[depot_index] = *prealloc;
 } else {
  stack_slabs[depot_index + 1] = *prealloc;




  smp_store_release(&next_slab_inited, 1);
 }
 *prealloc = ((void*)0);
 return 1;
}
