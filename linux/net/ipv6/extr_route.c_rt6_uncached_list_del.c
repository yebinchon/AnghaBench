
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct uncached_list {int lock; } ;
struct TYPE_6__ {int dev; } ;
struct rt6_info {int rt6i_uncached; TYPE_3__ dst; struct uncached_list* rt6i_uncached_list; } ;
struct TYPE_5__ {TYPE_1__* rt6_stats; } ;
struct net {TYPE_2__ ipv6; } ;
struct TYPE_4__ {int fib_rt_uncache; } ;


 int atomic_dec (int *) ;
 struct net* dev_net (int ) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void rt6_uncached_list_del(struct rt6_info *rt)
{
 if (!list_empty(&rt->rt6i_uncached)) {
  struct uncached_list *ul = rt->rt6i_uncached_list;
  struct net *net = dev_net(rt->dst.dev);

  spin_lock_bh(&ul->lock);
  list_del(&rt->rt6i_uncached);
  atomic_dec(&net->ipv6.rt6_stats->fib_rt_uncache);
  spin_unlock_bh(&ul->lock);
 }
}
