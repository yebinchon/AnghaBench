
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmemleak_scan_area {unsigned long start; size_t size; int node; } ;
struct kmemleak_object {unsigned long pointer; unsigned long size; int lock; int area_list; int flags; } ;
typedef int gfp_t ;


 int INIT_HLIST_NODE (int *) ;
 int OBJECT_FULL_SCAN ;
 size_t SIZE_MAX ;
 int dump_object_info (struct kmemleak_object*) ;
 struct kmemleak_object* find_and_get_object (unsigned long,int) ;
 int gfp_kmemleak_mask (int ) ;
 int hlist_add_head (int *,int *) ;
 struct kmemleak_scan_area* kmem_cache_alloc (scalar_t__,int ) ;
 int kmem_cache_free (scalar_t__,struct kmemleak_scan_area*) ;
 int kmemleak_warn (char*,unsigned long) ;
 int pr_warn_once (char*) ;
 int put_object (struct kmemleak_object*) ;
 scalar_t__ scan_area_cache ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void add_scan_area(unsigned long ptr, size_t size, gfp_t gfp)
{
 unsigned long flags;
 struct kmemleak_object *object;
 struct kmemleak_scan_area *area = ((void*)0);

 object = find_and_get_object(ptr, 1);
 if (!object) {
  kmemleak_warn("Adding scan area to unknown object at 0x%08lx\n",
         ptr);
  return;
 }

 if (scan_area_cache)
  area = kmem_cache_alloc(scan_area_cache, gfp_kmemleak_mask(gfp));

 spin_lock_irqsave(&object->lock, flags);
 if (!area) {
  pr_warn_once("Cannot allocate a scan area, scanning the full object\n");

  object->flags |= OBJECT_FULL_SCAN;
  goto out_unlock;
 }
 if (size == SIZE_MAX) {
  size = object->pointer + object->size - ptr;
 } else if (ptr + size > object->pointer + object->size) {
  kmemleak_warn("Scan area larger than object 0x%08lx\n", ptr);
  dump_object_info(object);
  kmem_cache_free(scan_area_cache, area);
  goto out_unlock;
 }

 INIT_HLIST_NODE(&area->node);
 area->start = ptr;
 area->size = size;

 hlist_add_head(&area->node, &object->area_list);
out_unlock:
 spin_unlock_irqrestore(&object->lock, flags);
 put_object(object);
}
