
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmap_area {unsigned long va_start; unsigned long va_end; int * vm; int rb_node; } ;
typedef int gfp_t ;


 int BUG_ON (int) ;
 int EBUSY ;
 int ENOMEM ;
 struct vmap_area* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int GFP_RECLAIM_MASK ;
 int IS_ALIGNED (unsigned long,unsigned long) ;
 int SIZE_MAX ;
 int __GFP_NOWARN ;
 unsigned long __alloc_vmap_area (unsigned long,unsigned long,unsigned long,unsigned long) ;
 scalar_t__ __this_cpu_cmpxchg (int ,int *,struct vmap_area*) ;
 int __this_cpu_read (int ) ;
 int blocking_notifier_call_chain (int *,int ,unsigned long*) ;
 scalar_t__ gfpflags_allow_blocking (int) ;
 int insert_vmap_area (struct vmap_area*,int *,int *) ;
 int is_power_of_2 (unsigned long) ;
 struct vmap_area* kmem_cache_alloc_node (int ,int,int) ;
 int kmem_cache_free (int ,struct vmap_area*) ;
 int kmemleak_scan_area (int *,int ,int) ;
 int might_sleep () ;
 int ne_fit_preload_node ;
 int offset_in_page (unsigned long) ;
 int pr_warn (char*,unsigned long) ;
 int preempt_disable () ;
 int preempt_enable () ;
 scalar_t__ printk_ratelimit () ;
 int purge_vmap_area_lazy () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int vmap_area_cachep ;
 int vmap_area_list ;
 int vmap_area_lock ;
 int vmap_area_root ;
 int vmap_initialized ;
 int vmap_notify_list ;

__attribute__((used)) static struct vmap_area *alloc_vmap_area(unsigned long size,
    unsigned long align,
    unsigned long vstart, unsigned long vend,
    int node, gfp_t gfp_mask)
{
 struct vmap_area *va, *pva;
 unsigned long addr;
 int purged = 0;

 BUG_ON(!size);
 BUG_ON(offset_in_page(size));
 BUG_ON(!is_power_of_2(align));

 if (unlikely(!vmap_initialized))
  return ERR_PTR(-EBUSY);

 might_sleep();

 va = kmem_cache_alloc_node(vmap_area_cachep,
   gfp_mask & GFP_RECLAIM_MASK, node);
 if (unlikely(!va))
  return ERR_PTR(-ENOMEM);





 kmemleak_scan_area(&va->rb_node, SIZE_MAX, gfp_mask & GFP_RECLAIM_MASK);

retry:
 preempt_disable();
 if (!__this_cpu_read(ne_fit_preload_node)) {
  preempt_enable();
  pva = kmem_cache_alloc_node(vmap_area_cachep, GFP_KERNEL, node);
  preempt_disable();

  if (__this_cpu_cmpxchg(ne_fit_preload_node, ((void*)0), pva)) {
   if (pva)
    kmem_cache_free(vmap_area_cachep, pva);
  }
 }

 spin_lock(&vmap_area_lock);
 preempt_enable();





 addr = __alloc_vmap_area(size, align, vstart, vend);
 if (unlikely(addr == vend))
  goto overflow;

 va->va_start = addr;
 va->va_end = addr + size;
 va->vm = ((void*)0);
 insert_vmap_area(va, &vmap_area_root, &vmap_area_list);

 spin_unlock(&vmap_area_lock);

 BUG_ON(!IS_ALIGNED(va->va_start, align));
 BUG_ON(va->va_start < vstart);
 BUG_ON(va->va_end > vend);

 return va;

overflow:
 spin_unlock(&vmap_area_lock);
 if (!purged) {
  purge_vmap_area_lazy();
  purged = 1;
  goto retry;
 }

 if (gfpflags_allow_blocking(gfp_mask)) {
  unsigned long freed = 0;
  blocking_notifier_call_chain(&vmap_notify_list, 0, &freed);
  if (freed > 0) {
   purged = 0;
   goto retry;
  }
 }

 if (!(gfp_mask & __GFP_NOWARN) && printk_ratelimit())
  pr_warn("vmap allocation for size %lu failed: use vmalloc=<size> to increase size\n",
   size);

 kmem_cache_free(vmap_area_cachep, va);
 return ERR_PTR(-EBUSY);
}
