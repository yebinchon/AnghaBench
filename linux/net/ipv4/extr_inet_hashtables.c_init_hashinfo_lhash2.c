
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inet_hashinfo {int lhash2_mask; TYPE_1__* lhash2; } ;
struct TYPE_2__ {scalar_t__ count; int head; int lock; } ;


 int INIT_HLIST_HEAD (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void init_hashinfo_lhash2(struct inet_hashinfo *h)
{
 int i;

 for (i = 0; i <= h->lhash2_mask; i++) {
  spin_lock_init(&h->lhash2[i].lock);
  INIT_HLIST_HEAD(&h->lhash2[i].head);
  h->lhash2[i].count = 0;
 }
}
