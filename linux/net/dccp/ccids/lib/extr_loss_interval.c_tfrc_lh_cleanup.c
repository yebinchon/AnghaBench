
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tfrc_loss_hist {scalar_t__ counter; int ** ring; } ;


 size_t LIH_INDEX (scalar_t__) ;
 scalar_t__ LIH_SIZE ;
 int kmem_cache_free (int ,int *) ;
 int tfrc_lh_is_initialised (struct tfrc_loss_hist*) ;
 int tfrc_lh_slab ;

void tfrc_lh_cleanup(struct tfrc_loss_hist *lh)
{
 if (!tfrc_lh_is_initialised(lh))
  return;

 for (lh->counter = 0; lh->counter < LIH_SIZE; lh->counter++)
  if (lh->ring[LIH_INDEX(lh->counter)] != ((void*)0)) {
   kmem_cache_free(tfrc_lh_slab,
     lh->ring[LIH_INDEX(lh->counter)]);
   lh->ring[LIH_INDEX(lh->counter)] = ((void*)0);
  }
}
