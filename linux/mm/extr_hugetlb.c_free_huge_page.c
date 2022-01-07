
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int lru; int * mapping; } ;
struct hugepage_subpool {int dummy; } ;
struct hstate {scalar_t__* surplus_huge_pages_node; int surplus_huge_pages; int resv_huge_pages; } ;


 int ClearPageHugeTemporary (struct page*) ;
 int ClearPagePrivate (struct page*) ;
 scalar_t__ PageHugeTemporary (struct page*) ;
 int PagePrivate (struct page*) ;
 int VM_BUG_ON_PAGE (int ,struct page*) ;
 int arch_clear_hugepage_flags (struct page*) ;
 int clear_page_huge_active (struct page*) ;
 int enqueue_huge_page (struct hstate*,struct page*) ;
 int hstate_index (struct hstate*) ;
 scalar_t__ hugepage_subpool_put_pages (struct hugepage_subpool*,int) ;
 int hugetlb_cgroup_uncharge_page (int ,int ,struct page*) ;
 int hugetlb_lock ;
 int list_del (int *) ;
 int page_count (struct page*) ;
 struct hstate* page_hstate (struct page*) ;
 int page_mapcount (struct page*) ;
 scalar_t__ page_private (struct page*) ;
 int page_to_nid (struct page*) ;
 int pages_per_huge_page (struct hstate*) ;
 int set_page_private (struct page*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int update_and_free_page (struct hstate*,struct page*) ;

void free_huge_page(struct page *page)
{




 struct hstate *h = page_hstate(page);
 int nid = page_to_nid(page);
 struct hugepage_subpool *spool =
  (struct hugepage_subpool *)page_private(page);
 bool restore_reserve;

 VM_BUG_ON_PAGE(page_count(page), page);
 VM_BUG_ON_PAGE(page_mapcount(page), page);

 set_page_private(page, 0);
 page->mapping = ((void*)0);
 restore_reserve = PagePrivate(page);
 ClearPagePrivate(page);
 if (!restore_reserve) {






  if (hugepage_subpool_put_pages(spool, 1) == 0)
   restore_reserve = 1;
 }

 spin_lock(&hugetlb_lock);
 clear_page_huge_active(page);
 hugetlb_cgroup_uncharge_page(hstate_index(h),
         pages_per_huge_page(h), page);
 if (restore_reserve)
  h->resv_huge_pages++;

 if (PageHugeTemporary(page)) {
  list_del(&page->lru);
  ClearPageHugeTemporary(page);
  update_and_free_page(h, page);
 } else if (h->surplus_huge_pages_node[nid]) {

  list_del(&page->lru);
  update_and_free_page(h, page);
  h->surplus_huge_pages--;
  h->surplus_huge_pages_node[nid]--;
 } else {
  arch_clear_hugepage_flags(page);
  enqueue_huge_page(h, page);
 }
 spin_unlock(&hugetlb_lock);
}
