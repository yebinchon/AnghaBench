
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmap_area {int va_end; int va_start; int purge_list; } ;


 int PAGE_SHIFT ;
 unsigned long atomic_long_add_return (int,int *) ;
 unsigned long lazy_max_pages () ;
 int llist_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int try_purge_vmap_area_lazy () ;
 scalar_t__ unlikely (int) ;
 int unlink_va (struct vmap_area*,int *) ;
 int vmap_area_lock ;
 int vmap_area_root ;
 int vmap_lazy_nr ;
 int vmap_purge_list ;

__attribute__((used)) static void free_vmap_area_noflush(struct vmap_area *va)
{
 unsigned long nr_lazy;

 spin_lock(&vmap_area_lock);
 unlink_va(va, &vmap_area_root);
 spin_unlock(&vmap_area_lock);

 nr_lazy = atomic_long_add_return((va->va_end - va->va_start) >>
    PAGE_SHIFT, &vmap_lazy_nr);


 llist_add(&va->purge_list, &vmap_purge_list);

 if (unlikely(nr_lazy > lazy_max_pages()))
  try_purge_vmap_area_lazy();
}
