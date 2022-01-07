
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet_frags {int frag_expire; int qsize; int (* constructor ) (struct inet_frag_queue*,void*) ;int frags_cachep; } ;
struct inet_frag_queue {int refcnt; int lock; int timer; struct fqdir* fqdir; } ;
struct fqdir {int dummy; } ;


 int GFP_ATOMIC ;
 int add_frag_mem_limit (struct fqdir*,int ) ;
 struct inet_frag_queue* kmem_cache_zalloc (int ,int ) ;
 int refcount_set (int *,int) ;
 int spin_lock_init (int *) ;
 int stub1 (struct inet_frag_queue*,void*) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static struct inet_frag_queue *inet_frag_alloc(struct fqdir *fqdir,
            struct inet_frags *f,
            void *arg)
{
 struct inet_frag_queue *q;

 q = kmem_cache_zalloc(f->frags_cachep, GFP_ATOMIC);
 if (!q)
  return ((void*)0);

 q->fqdir = fqdir;
 f->constructor(q, arg);
 add_frag_mem_limit(fqdir, f->qsize);

 timer_setup(&q->timer, f->frag_expire, 0);
 spin_lock_init(&q->lock);
 refcount_set(&q->refcnt, 3);

 return q;
}
