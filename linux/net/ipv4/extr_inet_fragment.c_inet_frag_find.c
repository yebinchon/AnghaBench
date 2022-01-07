
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inet_frag_queue {int refcnt; } ;
struct fqdir {scalar_t__ high_thresh; TYPE_1__* f; int rhashtable; } ;
struct TYPE_2__ {int rhash_params; } ;


 int IS_ERR_OR_NULL (struct inet_frag_queue*) ;
 scalar_t__ frag_mem_limit (struct fqdir*) ;
 struct inet_frag_queue* inet_frag_create (struct fqdir*,void*,struct inet_frag_queue**) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int refcount_inc_not_zero (int *) ;
 struct inet_frag_queue* rhashtable_lookup (int *,void*,int ) ;

struct inet_frag_queue *inet_frag_find(struct fqdir *fqdir, void *key)
{
 struct inet_frag_queue *fq = ((void*)0), *prev;

 if (!fqdir->high_thresh || frag_mem_limit(fqdir) > fqdir->high_thresh)
  return ((void*)0);

 rcu_read_lock();

 prev = rhashtable_lookup(&fqdir->rhashtable, key, fqdir->f->rhash_params);
 if (!prev)
  fq = inet_frag_create(fqdir, key, &prev);
 if (!IS_ERR_OR_NULL(prev)) {
  fq = prev;
  if (!refcount_inc_not_zero(&fq->refcnt))
   fq = ((void*)0);
 }
 rcu_read_unlock();
 return fq;
}
