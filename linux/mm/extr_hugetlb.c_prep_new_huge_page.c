
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int lru; } ;
struct hstate {int * nr_huge_pages_node; int nr_huge_pages; } ;


 int HUGETLB_PAGE_DTOR ;
 int INIT_LIST_HEAD (int *) ;
 int hugetlb_lock ;
 int set_compound_page_dtor (struct page*,int ) ;
 int set_hugetlb_cgroup (struct page*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void prep_new_huge_page(struct hstate *h, struct page *page, int nid)
{
 INIT_LIST_HEAD(&page->lru);
 set_compound_page_dtor(page, HUGETLB_PAGE_DTOR);
 spin_lock(&hugetlb_lock);
 set_hugetlb_cgroup(page, ((void*)0));
 h->nr_huge_pages++;
 h->nr_huge_pages_node[nid]++;
 spin_unlock(&hugetlb_lock);
}
