
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmap_block {scalar_t__ dirty; int free; int lock; int dirty_max; int dirty_min; } ;


 int BUG_ON (int) ;
 unsigned long PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 scalar_t__ VMAP_BBMAP_BITS ;
 int VMAP_BLOCK_SIZE ;
 unsigned long VMAP_MAX_ALLOC ;
 unsigned long addr_to_vb_idx (unsigned long) ;
 scalar_t__ debug_pagealloc_enabled () ;
 int flush_cache_vunmap (unsigned long,unsigned long) ;
 int flush_tlb_kernel_range (unsigned long,unsigned long) ;
 int free_vmap_block (struct vmap_block*) ;
 unsigned int get_order (unsigned long) ;
 int max (int ,unsigned long) ;
 int min (int ,unsigned long) ;
 int offset_in_page (unsigned long) ;
 struct vmap_block* radix_tree_lookup (int *,unsigned long) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vmap_block_tree ;
 int vunmap_page_range (unsigned long,unsigned long) ;

__attribute__((used)) static void vb_free(const void *addr, unsigned long size)
{
 unsigned long offset;
 unsigned long vb_idx;
 unsigned int order;
 struct vmap_block *vb;

 BUG_ON(offset_in_page(size));
 BUG_ON(size > PAGE_SIZE*VMAP_MAX_ALLOC);

 flush_cache_vunmap((unsigned long)addr, (unsigned long)addr + size);

 order = get_order(size);

 offset = (unsigned long)addr & (VMAP_BLOCK_SIZE - 1);
 offset >>= PAGE_SHIFT;

 vb_idx = addr_to_vb_idx((unsigned long)addr);
 rcu_read_lock();
 vb = radix_tree_lookup(&vmap_block_tree, vb_idx);
 rcu_read_unlock();
 BUG_ON(!vb);

 vunmap_page_range((unsigned long)addr, (unsigned long)addr + size);

 if (debug_pagealloc_enabled())
  flush_tlb_kernel_range((unsigned long)addr,
     (unsigned long)addr + size);

 spin_lock(&vb->lock);


 vb->dirty_min = min(vb->dirty_min, offset);
 vb->dirty_max = max(vb->dirty_max, offset + (1UL << order));

 vb->dirty += 1UL << order;
 if (vb->dirty == VMAP_BBMAP_BITS) {
  BUG_ON(vb->free);
  spin_unlock(&vb->lock);
  free_vmap_block(vb);
 } else
  spin_unlock(&vb->lock);
}
