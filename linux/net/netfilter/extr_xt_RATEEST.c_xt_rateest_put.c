
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_rateest_net {int hash_lock; } ;
struct xt_rateest {scalar_t__ refcnt; int rate_est; int list; } ;
struct net {int dummy; } ;


 int gen_kill_estimator (int *) ;
 int hlist_del (int *) ;
 int kfree_rcu (struct xt_rateest*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct xt_rateest_net* net_generic (struct net*,int ) ;
 int rcu ;
 int xt_rateest_id ;

void xt_rateest_put(struct net *net, struct xt_rateest *est)
{
 struct xt_rateest_net *xn = net_generic(net, xt_rateest_id);

 mutex_lock(&xn->hash_lock);
 if (--est->refcnt == 0) {
  hlist_del(&est->list);
  gen_kill_estimator(&est->rate_est);




  kfree_rcu(est, rcu);
 }
 mutex_unlock(&xn->hash_lock);
}
