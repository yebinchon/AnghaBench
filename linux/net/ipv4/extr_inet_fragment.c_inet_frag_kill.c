
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inet_frag_queue {int flags; int refcnt; int node; struct fqdir* fqdir; int timer; } ;
struct fqdir {TYPE_1__* f; int rhashtable; int dead; } ;
struct TYPE_2__ {int rhash_params; } ;


 int INET_FRAG_COMPLETE ;
 int INET_FRAG_HASH_DEAD ;
 scalar_t__ del_timer (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int refcount_dec (int *) ;
 int rhashtable_remove_fast (int *,int *,int ) ;

void inet_frag_kill(struct inet_frag_queue *fq)
{
 if (del_timer(&fq->timer))
  refcount_dec(&fq->refcnt);

 if (!(fq->flags & INET_FRAG_COMPLETE)) {
  struct fqdir *fqdir = fq->fqdir;

  fq->flags |= INET_FRAG_COMPLETE;
  rcu_read_lock();





  if (!fqdir->dead) {
   rhashtable_remove_fast(&fqdir->rhashtable, &fq->node,
            fqdir->f->rhash_params);
   refcount_dec(&fq->refcnt);
  } else {
   fq->flags |= INET_FRAG_HASH_DEAD;
  }
  rcu_read_unlock();
 }
}
