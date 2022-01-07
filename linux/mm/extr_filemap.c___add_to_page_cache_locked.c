
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {struct address_space* mapping; int index; } ;
struct mem_cgroup {int dummy; } ;
struct address_space {int nrpages; int nrexceptional; int i_pages; } ;
typedef int pgoff_t ;
typedef int gfp_t ;
struct TYPE_2__ {int mm; } ;


 int EEXIST ;
 int GFP_RECLAIM_MASK ;
 int NR_FILE_PAGES ;
 int PageHuge (struct page*) ;
 int PageLocked (struct page*) ;
 int PageSwapBacked (struct page*) ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int XA_STATE (int ,int *,int ) ;
 int __inc_node_page_state (struct page*,int ) ;
 TYPE_1__* current ;
 int get_page (struct page*) ;
 int mapping_set_update (int *,struct address_space*) ;
 int mem_cgroup_cancel_charge (struct page*,struct mem_cgroup*,int) ;
 int mem_cgroup_commit_charge (struct page*,struct mem_cgroup*,int,int) ;
 int mem_cgroup_try_charge (struct page*,int ,int,struct mem_cgroup**,int) ;
 int put_page (struct page*) ;
 int trace_mm_filemap_add_to_page_cache (struct page*) ;
 scalar_t__ xa_is_value (void*) ;
 int xas ;
 int xas_error (int *) ;
 void* xas_load (int *) ;
 int xas_lock_irq (int *) ;
 scalar_t__ xas_nomem (int *,int) ;
 int xas_set_err (int *,int ) ;
 int xas_store (int *,struct page*) ;
 int xas_unlock_irq (int *) ;

__attribute__((used)) static int __add_to_page_cache_locked(struct page *page,
          struct address_space *mapping,
          pgoff_t offset, gfp_t gfp_mask,
          void **shadowp)
{
 XA_STATE(xas, &mapping->i_pages, offset);
 int huge = PageHuge(page);
 struct mem_cgroup *memcg;
 int error;
 void *old;

 VM_BUG_ON_PAGE(!PageLocked(page), page);
 VM_BUG_ON_PAGE(PageSwapBacked(page), page);
 mapping_set_update(&xas, mapping);

 if (!huge) {
  error = mem_cgroup_try_charge(page, current->mm,
           gfp_mask, &memcg, 0);
  if (error)
   return error;
 }

 get_page(page);
 page->mapping = mapping;
 page->index = offset;

 do {
  xas_lock_irq(&xas);
  old = xas_load(&xas);
  if (old && !xa_is_value(old))
   xas_set_err(&xas, -EEXIST);
  xas_store(&xas, page);
  if (xas_error(&xas))
   goto unlock;

  if (xa_is_value(old)) {
   mapping->nrexceptional--;
   if (shadowp)
    *shadowp = old;
  }
  mapping->nrpages++;


  if (!huge)
   __inc_node_page_state(page, NR_FILE_PAGES);
unlock:
  xas_unlock_irq(&xas);
 } while (xas_nomem(&xas, gfp_mask & GFP_RECLAIM_MASK));

 if (xas_error(&xas))
  goto error;

 if (!huge)
  mem_cgroup_commit_charge(page, memcg, 0, 0);
 trace_mm_filemap_add_to_page_cache(page);
 return 0;
error:
 page->mapping = ((void*)0);

 if (!huge)
  mem_cgroup_cancel_charge(page, memcg, 0);
 put_page(page);
 return xas_error(&xas);
}
