
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_rateest_net {int hash_lock; } ;
struct xt_rateest {int dummy; } ;
struct net {int dummy; } ;


 struct xt_rateest* __xt_rateest_lookup (struct xt_rateest_net*,char const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct xt_rateest_net* net_generic (struct net*,int ) ;
 int xt_rateest_id ;

struct xt_rateest *xt_rateest_lookup(struct net *net, const char *name)
{
 struct xt_rateest_net *xn = net_generic(net, xt_rateest_id);
 struct xt_rateest *est;

 mutex_lock(&xn->hash_lock);
 est = __xt_rateest_lookup(xn, name);
 mutex_unlock(&xn->hash_lock);
 return est;
}
