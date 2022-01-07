
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inet_hashinfo {int * lhash2; TYPE_1__* listening_hash; } ;
struct TYPE_2__ {scalar_t__ count; int head; int lock; } ;


 int INET_LHTABLE_SIZE ;
 int INIT_HLIST_HEAD (int *) ;
 int spin_lock_init (int *) ;

void inet_hashinfo_init(struct inet_hashinfo *h)
{
 int i;

 for (i = 0; i < INET_LHTABLE_SIZE; i++) {
  spin_lock_init(&h->listening_hash[i].lock);
  INIT_HLIST_HEAD(&h->listening_hash[i].head);
  h->listening_hash[i].count = 0;
 }

 h->lhash2 = ((void*)0);
}
