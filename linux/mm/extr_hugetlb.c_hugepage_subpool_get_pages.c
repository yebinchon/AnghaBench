
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hugepage_subpool {int max_hpages; long used_hpages; int min_hpages; long rsv_hpages; int lock; } ;


 long ENOMEM ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static long hugepage_subpool_get_pages(struct hugepage_subpool *spool,
          long delta)
{
 long ret = delta;

 if (!spool)
  return ret;

 spin_lock(&spool->lock);

 if (spool->max_hpages != -1) {
  if ((spool->used_hpages + delta) <= spool->max_hpages)
   spool->used_hpages += delta;
  else {
   ret = -ENOMEM;
   goto unlock_ret;
  }
 }


 if (spool->min_hpages != -1 && spool->rsv_hpages) {
  if (delta > spool->rsv_hpages) {




   ret = delta - spool->rsv_hpages;
   spool->rsv_hpages = 0;
  } else {
   ret = 0;
   spool->rsv_hpages -= delta;
  }
 }

unlock_ret:
 spin_unlock(&spool->lock);
 return ret;
}
