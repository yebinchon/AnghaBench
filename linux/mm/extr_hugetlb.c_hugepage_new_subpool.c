
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hugepage_subpool {int count; long max_hpages; long min_hpages; long rsv_hpages; struct hstate* hstate; int lock; } ;
struct hstate {int dummy; } ;


 int GFP_KERNEL ;
 scalar_t__ hugetlb_acct_memory (struct hstate*,long) ;
 int kfree (struct hugepage_subpool*) ;
 struct hugepage_subpool* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

struct hugepage_subpool *hugepage_new_subpool(struct hstate *h, long max_hpages,
      long min_hpages)
{
 struct hugepage_subpool *spool;

 spool = kzalloc(sizeof(*spool), GFP_KERNEL);
 if (!spool)
  return ((void*)0);

 spin_lock_init(&spool->lock);
 spool->count = 1;
 spool->max_hpages = max_hpages;
 spool->hstate = h;
 spool->min_hpages = min_hpages;

 if (min_hpages != -1 && hugetlb_acct_memory(h, min_hpages)) {
  kfree(spool);
  return ((void*)0);
 }
 spool->rsv_hpages = min_hpages;

 return spool;
}
