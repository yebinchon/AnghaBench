
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resv_map {int lock; int adds_in_progress; int region_cache_count; } ;


 int VM_BUG_ON (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void region_abort(struct resv_map *resv, long f, long t)
{
 spin_lock(&resv->lock);
 VM_BUG_ON(!resv->region_cache_count);
 resv->adds_in_progress--;
 spin_unlock(&resv->lock);
}
