
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_serv {int sv_nrthreads; } ;
struct svc_rqst {int rq_all; } ;
struct svc_pool {int sp_lock; int sp_all_threads; int sp_nrthreads; } ;


 int ENOMEM ;
 struct svc_rqst* ERR_PTR (int ) ;
 int list_add_rcu (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct svc_rqst* svc_rqst_alloc (struct svc_serv*,struct svc_pool*,int) ;

struct svc_rqst *
svc_prepare_thread(struct svc_serv *serv, struct svc_pool *pool, int node)
{
 struct svc_rqst *rqstp;

 rqstp = svc_rqst_alloc(serv, pool, node);
 if (!rqstp)
  return ERR_PTR(-ENOMEM);

 serv->sv_nrthreads++;
 spin_lock_bh(&pool->sp_lock);
 pool->sp_nrthreads++;
 list_add_rcu(&rqstp->rq_all, &pool->sp_all_threads);
 spin_unlock_bh(&pool->sp_lock);
 return rqstp;
}
