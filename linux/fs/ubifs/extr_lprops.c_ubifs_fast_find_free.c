
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_lpt_heap {scalar_t__ cnt; struct ubifs_lprops const** arr; } ;
typedef struct ubifs_lprops {int flags; } const ubifs_lprops ;
struct ubifs_info {struct ubifs_lpt_heap* lpt_heap; int lp_mutex; } ;


 int LPROPS_FREE ;
 int LPROPS_INDEX ;
 int LPROPS_TAKEN ;
 int mutex_is_locked (int *) ;
 int ubifs_assert (struct ubifs_info*,int) ;

const struct ubifs_lprops *ubifs_fast_find_free(struct ubifs_info *c)
{
 struct ubifs_lprops *lprops;
 struct ubifs_lpt_heap *heap;

 ubifs_assert(c, mutex_is_locked(&c->lp_mutex));

 heap = &c->lpt_heap[LPROPS_FREE - 1];
 if (heap->cnt == 0)
  return ((void*)0);

 lprops = heap->arr[0];
 ubifs_assert(c, !(lprops->flags & LPROPS_TAKEN));
 ubifs_assert(c, !(lprops->flags & LPROPS_INDEX));
 return lprops;
}
