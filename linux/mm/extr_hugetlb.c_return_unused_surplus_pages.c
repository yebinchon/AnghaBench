
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hstate {scalar_t__ resv_huge_pages; int surplus_huge_pages; } ;


 size_t N_MEMORY ;
 int cond_resched_lock (int *) ;
 int free_pool_huge_page (struct hstate*,int *,int) ;
 scalar_t__ hstate_is_gigantic (struct hstate*) ;
 int hugetlb_lock ;
 unsigned long min (unsigned long,int ) ;
 int * node_states ;

__attribute__((used)) static void return_unused_surplus_pages(struct hstate *h,
     unsigned long unused_resv_pages)
{
 unsigned long nr_pages;


 if (hstate_is_gigantic(h))
  goto out;





 nr_pages = min(unused_resv_pages, h->surplus_huge_pages);
 while (nr_pages--) {
  h->resv_huge_pages--;
  unused_resv_pages--;
  if (!free_pool_huge_page(h, &node_states[N_MEMORY], 1))
   goto out;
  cond_resched_lock(&hugetlb_lock);
 }

out:

 h->resv_huge_pages -= unused_resv_pages;
}
