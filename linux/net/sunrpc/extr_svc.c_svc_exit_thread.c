
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_serv {int dummy; } ;
struct svc_rqst {int rq_all; int rq_flags; struct svc_pool* rq_pool; struct svc_serv* rq_server; } ;
struct svc_pool {int sp_lock; int sp_nrthreads; } ;


 int RQ_VICTIM ;
 int list_del_rcu (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int svc_destroy (struct svc_serv*) ;
 int svc_rqst_free (struct svc_rqst*) ;
 int test_and_set_bit (int ,int *) ;

void
svc_exit_thread(struct svc_rqst *rqstp)
{
 struct svc_serv *serv = rqstp->rq_server;
 struct svc_pool *pool = rqstp->rq_pool;

 spin_lock_bh(&pool->sp_lock);
 pool->sp_nrthreads--;
 if (!test_and_set_bit(RQ_VICTIM, &rqstp->rq_flags))
  list_del_rcu(&rqstp->rq_all);
 spin_unlock_bh(&pool->sp_lock);

 svc_rqst_free(rqstp);


 if (serv)
  svc_destroy(serv);
}
