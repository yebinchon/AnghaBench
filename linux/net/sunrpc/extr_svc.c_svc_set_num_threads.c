
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_serv {int sv_nrthreads; } ;
struct svc_pool {int sp_lock; scalar_t__ sp_nrthreads; } ;


 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int svc_signal_kthreads (struct svc_serv*,struct svc_pool*,int) ;
 int svc_start_kthreads (struct svc_serv*,struct svc_pool*,int) ;

int
svc_set_num_threads(struct svc_serv *serv, struct svc_pool *pool, int nrservs)
{
 if (pool == ((void*)0)) {

  nrservs -= (serv->sv_nrthreads-1);
 } else {
  spin_lock_bh(&pool->sp_lock);
  nrservs -= pool->sp_nrthreads;
  spin_unlock_bh(&pool->sp_lock);
 }

 if (nrservs > 0)
  return svc_start_kthreads(serv, pool, nrservs);
 if (nrservs < 0)
  return svc_signal_kthreads(serv, pool, nrservs);
 return 0;
}
