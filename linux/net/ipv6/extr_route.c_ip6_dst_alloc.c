
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rt6_info {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* rt6_stats; int ip6_dst_ops; } ;
struct net {TYPE_2__ ipv6; } ;
struct TYPE_3__ {int fib_rt_alloc; } ;


 int DST_OBSOLETE_FORCE_CHK ;
 int atomic_inc (int *) ;
 struct rt6_info* dst_alloc (int *,struct net_device*,int,int ,int) ;
 int rt6_info_init (struct rt6_info*) ;

struct rt6_info *ip6_dst_alloc(struct net *net, struct net_device *dev,
          int flags)
{
 struct rt6_info *rt = dst_alloc(&net->ipv6.ip6_dst_ops, dev,
     1, DST_OBSOLETE_FORCE_CHK, flags);

 if (rt) {
  rt6_info_init(rt);
  atomic_inc(&net->ipv6.rt6_stats->fib_rt_alloc);
 }

 return rt;
}
