
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet_frag_queue {int flags; int refcnt; int lock; int timer; } ;


 int INET_FRAG_COMPLETE ;
 int INET_FRAG_HASH_DEAD ;
 scalar_t__ del_timer_sync (int *) ;
 int inet_frag_destroy (struct inet_frag_queue*) ;
 scalar_t__ refcount_sub_and_test (int,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void inet_frags_free_cb(void *ptr, void *arg)
{
 struct inet_frag_queue *fq = ptr;
 int count;

 count = del_timer_sync(&fq->timer) ? 1 : 0;

 spin_lock_bh(&fq->lock);
 if (!(fq->flags & INET_FRAG_COMPLETE)) {
  fq->flags |= INET_FRAG_COMPLETE;
  count++;
 } else if (fq->flags & INET_FRAG_HASH_DEAD) {
  count++;
 }
 spin_unlock_bh(&fq->lock);

 if (refcount_sub_and_test(count, &fq->refcnt))
  inet_frag_destroy(fq);
}
