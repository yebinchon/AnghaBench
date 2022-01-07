
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_trans_rdma {int excess_rc; int rq_depth; int rq_sem; int sq_depth; int sq_sem; int cm_done; int req_lock; int timeout; int privport; int port; } ;
struct p9_rdma_opts {int timeout; int rq_depth; int sq_depth; int privport; int port; } ;


 int GFP_KERNEL ;
 int atomic_set (int *,int ) ;
 int init_completion (int *) ;
 struct p9_trans_rdma* kzalloc (int,int ) ;
 int sema_init (int *,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct p9_trans_rdma *alloc_rdma(struct p9_rdma_opts *opts)
{
 struct p9_trans_rdma *rdma;

 rdma = kzalloc(sizeof(struct p9_trans_rdma), GFP_KERNEL);
 if (!rdma)
  return ((void*)0);

 rdma->port = opts->port;
 rdma->privport = opts->privport;
 rdma->sq_depth = opts->sq_depth;
 rdma->rq_depth = opts->rq_depth;
 rdma->timeout = opts->timeout;
 spin_lock_init(&rdma->req_lock);
 init_completion(&rdma->cm_done);
 sema_init(&rdma->sq_sem, rdma->sq_depth);
 sema_init(&rdma->rq_sem, rdma->rq_depth);
 atomic_set(&rdma->excess_rc, 0);

 return rdma;
}
