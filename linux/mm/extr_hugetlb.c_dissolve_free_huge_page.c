
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int lru; } ;
struct hstate {scalar_t__ free_huge_pages; scalar_t__ resv_huge_pages; int max_huge_pages; int * free_huge_pages_node; } ;


 int ClearPageHWPoison (struct page*) ;
 int EBUSY ;
 scalar_t__ PageHWPoison (struct page*) ;
 int PageHuge (struct page*) ;
 int SetPageHWPoison (struct page*) ;
 struct page* compound_head (struct page*) ;
 int hugetlb_lock ;
 int list_del (int *) ;
 int page_count (struct page*) ;
 struct hstate* page_hstate (struct page*) ;
 int page_to_nid (struct page*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int update_and_free_page (struct hstate*,struct page*) ;

int dissolve_free_huge_page(struct page *page)
{
 int rc = -EBUSY;


 if (!PageHuge(page))
  return 0;

 spin_lock(&hugetlb_lock);
 if (!PageHuge(page)) {
  rc = 0;
  goto out;
 }

 if (!page_count(page)) {
  struct page *head = compound_head(page);
  struct hstate *h = page_hstate(head);
  int nid = page_to_nid(head);
  if (h->free_huge_pages - h->resv_huge_pages == 0)
   goto out;




  if (PageHWPoison(head) && page != head) {
   SetPageHWPoison(page);
   ClearPageHWPoison(head);
  }
  list_del(&head->lru);
  h->free_huge_pages--;
  h->free_huge_pages_node[nid]--;
  h->max_huge_pages--;
  update_and_free_page(h, head);
  rc = 0;
 }
out:
 spin_unlock(&hugetlb_lock);
 return rc;
}
