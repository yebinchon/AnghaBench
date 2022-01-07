
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int flags; } ;
struct hstate {int * nr_huge_pages_node; int nr_huge_pages; } ;


 int NULL_COMPOUND_DTOR ;
 int PG_active ;
 int PG_dirty ;
 int PG_error ;
 int PG_locked ;
 int PG_private ;
 int PG_referenced ;
 int PG_writeback ;
 int VM_BUG_ON_PAGE (int ,struct page*) ;
 int __free_pages (struct page*,int ) ;
 int destroy_compound_gigantic_page (struct page*,int ) ;
 int free_gigantic_page (struct page*,int ) ;
 int gigantic_page_runtime_supported () ;
 scalar_t__ hstate_is_gigantic (struct hstate*) ;
 int huge_page_order (struct hstate*) ;
 int hugetlb_cgroup_from_page (struct page*) ;
 size_t page_to_nid (struct page*) ;
 int pages_per_huge_page (struct hstate*) ;
 int set_compound_page_dtor (struct page*,int ) ;
 int set_page_refcounted (struct page*) ;

__attribute__((used)) static void update_and_free_page(struct hstate *h, struct page *page)
{
 int i;

 if (hstate_is_gigantic(h) && !gigantic_page_runtime_supported())
  return;

 h->nr_huge_pages--;
 h->nr_huge_pages_node[page_to_nid(page)]--;
 for (i = 0; i < pages_per_huge_page(h); i++) {
  page[i].flags &= ~(1 << PG_locked | 1 << PG_error |
    1 << PG_referenced | 1 << PG_dirty |
    1 << PG_active | 1 << PG_private |
    1 << PG_writeback);
 }
 VM_BUG_ON_PAGE(hugetlb_cgroup_from_page(page), page);
 set_compound_page_dtor(page, NULL_COMPOUND_DTOR);
 set_page_refcounted(page);
 if (hstate_is_gigantic(h)) {
  destroy_compound_gigantic_page(page, huge_page_order(h));
  free_gigantic_page(page, huge_page_order(h));
 } else {
  __free_pages(page, huge_page_order(h));
 }
}
