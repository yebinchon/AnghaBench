
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hugepage_subpool {int max_hpages; long used_hpages; int min_hpages; long rsv_hpages; int lock; } ;


 int spin_lock (int *) ;
 int unlock_or_release_subpool (struct hugepage_subpool*) ;

__attribute__((used)) static long hugepage_subpool_put_pages(struct hugepage_subpool *spool,
           long delta)
{
 long ret = delta;

 if (!spool)
  return delta;

 spin_lock(&spool->lock);

 if (spool->max_hpages != -1)
  spool->used_hpages -= delta;


 if (spool->min_hpages != -1 && spool->used_hpages < spool->min_hpages) {
  if (spool->rsv_hpages + delta <= spool->min_hpages)
   ret = 0;
  else
   ret = spool->rsv_hpages + delta - spool->min_hpages;

  spool->rsv_hpages += delta;
  if (spool->rsv_hpages > spool->min_hpages)
   spool->rsv_hpages = spool->min_hpages;
 }





 unlock_or_release_subpool(spool);

 return ret;
}
