
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hstate {int free_huge_pages_node; } ;


 int ENOMEM ;
 long cpuset_mems_nr (int ) ;
 scalar_t__ gather_surplus_pages (struct hstate*,long) ;
 int hugetlb_lock ;
 int return_unused_surplus_pages (struct hstate*,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int hugetlb_acct_memory(struct hstate *h, long delta)
{
 int ret = -ENOMEM;

 spin_lock(&hugetlb_lock);
 if (delta > 0) {
  if (gather_surplus_pages(h, delta) < 0)
   goto out;

  if (delta > cpuset_mems_nr(h->free_huge_pages_node)) {
   return_unused_surplus_pages(h, delta);
   goto out;
  }
 }

 ret = 0;
 if (delta < 0)
  return_unused_surplus_pages(h, (unsigned long) -delta);

out:
 spin_unlock(&hugetlb_lock);
 return ret;
}
