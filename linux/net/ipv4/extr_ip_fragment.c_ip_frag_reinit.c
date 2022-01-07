
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * last_run_head; int * fragments_tail; int rb_fragments; scalar_t__ meat; scalar_t__ len; scalar_t__ flags; TYPE_2__* fqdir; int refcnt; int timer; } ;
struct ipq {scalar_t__ ecn; scalar_t__ iif; TYPE_1__ q; } ;
struct TYPE_4__ {scalar_t__ timeout; } ;


 int ETIMEDOUT ;
 int RB_ROOT ;
 unsigned int inet_frag_rbtree_purge (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int refcount_inc (int *) ;
 int sub_frag_mem_limit (TYPE_2__*,unsigned int) ;

__attribute__((used)) static int ip_frag_reinit(struct ipq *qp)
{
 unsigned int sum_truesize = 0;

 if (!mod_timer(&qp->q.timer, jiffies + qp->q.fqdir->timeout)) {
  refcount_inc(&qp->q.refcnt);
  return -ETIMEDOUT;
 }

 sum_truesize = inet_frag_rbtree_purge(&qp->q.rb_fragments);
 sub_frag_mem_limit(qp->q.fqdir, sum_truesize);

 qp->q.flags = 0;
 qp->q.len = 0;
 qp->q.meat = 0;
 qp->q.rb_fragments = RB_ROOT;
 qp->q.fragments_tail = ((void*)0);
 qp->q.last_run_head = ((void*)0);
 qp->iif = 0;
 qp->ecn = 0;

 return 0;
}
