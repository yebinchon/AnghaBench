
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet_frags {unsigned int qsize; } ;
struct inet_frag_queue {int flags; int rcu; int rb_fragments; struct fqdir* fqdir; int timer; } ;
struct fqdir {struct inet_frags* f; } ;


 int INET_FRAG_COMPLETE ;
 int WARN_ON (int) ;
 int call_rcu (int *,int ) ;
 scalar_t__ del_timer (int *) ;
 int inet_frag_destroy_rcu ;
 unsigned int inet_frag_rbtree_purge (int *) ;
 int sub_frag_mem_limit (struct fqdir*,unsigned int) ;

void inet_frag_destroy(struct inet_frag_queue *q)
{
 struct fqdir *fqdir;
 unsigned int sum, sum_truesize = 0;
 struct inet_frags *f;

 WARN_ON(!(q->flags & INET_FRAG_COMPLETE));
 WARN_ON(del_timer(&q->timer) != 0);


 fqdir = q->fqdir;
 f = fqdir->f;
 sum_truesize = inet_frag_rbtree_purge(&q->rb_fragments);
 sum = sum_truesize + f->qsize;

 call_rcu(&q->rcu, inet_frag_destroy_rcu);

 sub_frag_mem_limit(fqdir, sum);
}
