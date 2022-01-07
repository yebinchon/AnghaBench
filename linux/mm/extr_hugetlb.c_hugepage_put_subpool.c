
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hugepage_subpool {int count; int lock; } ;


 int BUG_ON (int) ;
 int spin_lock (int *) ;
 int unlock_or_release_subpool (struct hugepage_subpool*) ;

void hugepage_put_subpool(struct hugepage_subpool *spool)
{
 spin_lock(&spool->lock);
 BUG_ON(!spool->count);
 spool->count--;
 unlock_or_release_subpool(spool);
}
