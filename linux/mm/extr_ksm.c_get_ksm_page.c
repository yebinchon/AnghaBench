
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stable_node {int kpfn; } ;
struct page {int mapping; } ;
typedef enum get_ksm_page_flags { ____Placeholder_get_ksm_page_flags } get_ksm_page_flags ;


 int EBUSY ;
 struct page* ERR_PTR (int ) ;
 int GET_KSM_PAGE_LOCK ;
 int GET_KSM_PAGE_NOLOCK ;
 int GET_KSM_PAGE_TRYLOCK ;
 unsigned long PAGE_MAPPING_KSM ;
 int PageSwapCache (struct page*) ;
 unsigned long READ_ONCE (int ) ;
 int cpu_relax () ;
 int get_page_unless_zero (struct page*) ;
 int lock_page (struct page*) ;
 struct page* pfn_to_page (unsigned long) ;
 int put_page (struct page*) ;
 int remove_node_from_stable_tree (struct stable_node*) ;
 int smp_rmb () ;
 int trylock_page (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static struct page *get_ksm_page(struct stable_node *stable_node,
     enum get_ksm_page_flags flags)
{
 struct page *page;
 void *expected_mapping;
 unsigned long kpfn;

 expected_mapping = (void *)((unsigned long)stable_node |
     PAGE_MAPPING_KSM);
again:
 kpfn = READ_ONCE(stable_node->kpfn);
 page = pfn_to_page(kpfn);
 if (READ_ONCE(page->mapping) != expected_mapping)
  goto stale;
 while (!get_page_unless_zero(page)) {
  if (!PageSwapCache(page))
   goto stale;
  cpu_relax();
 }

 if (READ_ONCE(page->mapping) != expected_mapping) {
  put_page(page);
  goto stale;
 }

 if (flags == GET_KSM_PAGE_TRYLOCK) {
  if (!trylock_page(page)) {
   put_page(page);
   return ERR_PTR(-EBUSY);
  }
 } else if (flags == GET_KSM_PAGE_LOCK)
  lock_page(page);

 if (flags != GET_KSM_PAGE_NOLOCK) {
  if (READ_ONCE(page->mapping) != expected_mapping) {
   unlock_page(page);
   put_page(page);
   goto stale;
  }
 }
 return page;

stale:






 smp_rmb();
 if (READ_ONCE(stable_node->kpfn) != kpfn)
  goto again;
 remove_node_from_stable_tree(stable_node);
 return ((void*)0);
}
