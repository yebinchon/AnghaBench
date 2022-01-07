
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rt6key {int dummy; } ;
struct dst_entry {int __use; int output; int input; } ;
struct rt6_info {int rt6i_flags; int rt6i_src; int rt6i_dst; int rt6i_gateway; int rt6i_idev; struct dst_entry dst; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* rt6_stats; } ;
struct net {TYPE_2__ ipv6; struct net_device* loopback_dev; } ;
struct TYPE_3__ {int fib_rt_alloc; } ;


 int DST_OBSOLETE_DEAD ;
 int ENOMEM ;
 struct dst_entry* ERR_PTR (int ) ;
 int RTF_PCPU ;
 int atomic_inc (int *) ;
 struct rt6_info* dst_alloc (int *,struct net_device*,int,int ,int ) ;
 int dst_copy_metrics (struct dst_entry*,struct dst_entry*) ;
 int dst_discard ;
 int dst_discard_out ;
 int dst_release (struct dst_entry*) ;
 int in6_dev_get (struct net_device*) ;
 int ip6_dst_blackhole_ops ;
 int memcpy (int *,int *,int) ;
 int rt6_info_init (struct rt6_info*) ;

struct dst_entry *ip6_blackhole_route(struct net *net, struct dst_entry *dst_orig)
{
 struct rt6_info *rt, *ort = (struct rt6_info *) dst_orig;
 struct net_device *loopback_dev = net->loopback_dev;
 struct dst_entry *new = ((void*)0);

 rt = dst_alloc(&ip6_dst_blackhole_ops, loopback_dev, 1,
         DST_OBSOLETE_DEAD, 0);
 if (rt) {
  rt6_info_init(rt);
  atomic_inc(&net->ipv6.rt6_stats->fib_rt_alloc);

  new = &rt->dst;
  new->__use = 1;
  new->input = dst_discard;
  new->output = dst_discard_out;

  dst_copy_metrics(new, &ort->dst);

  rt->rt6i_idev = in6_dev_get(loopback_dev);
  rt->rt6i_gateway = ort->rt6i_gateway;
  rt->rt6i_flags = ort->rt6i_flags & ~RTF_PCPU;

  memcpy(&rt->rt6i_dst, &ort->rt6i_dst, sizeof(struct rt6key));



 }

 dst_release(dst_orig);
 return new ? new : ERR_PTR(-ENOMEM);
}
