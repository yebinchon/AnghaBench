
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int output; int input; int flags; } ;
struct TYPE_6__ {int plen; int addr; } ;
struct rt6_info {TYPE_4__ dst; struct inet6_dev* rt6i_idev; TYPE_1__ rt6i_dst; int rt6i_gateway; } ;
struct net_device {int dummy; } ;
struct TYPE_8__ {TYPE_2__* rt6_stats; } ;
struct net {TYPE_3__ ipv6; } ;
struct inet6_dev {int dummy; } ;
struct flowi6 {int daddr; } ;
struct dst_entry {int dummy; } ;
struct TYPE_7__ {int fib_rt_uncache; } ;


 int DST_HOST ;
 int ENODEV ;
 int ENOMEM ;
 struct dst_entry* ERR_PTR (int ) ;
 int RTAX_HOPLIMIT ;
 int atomic_inc (int *) ;
 struct net* dev_net (struct net_device*) ;
 int dst_metric_set (TYPE_4__*,int ,int ) ;
 int flowi6_to_flowi (struct flowi6*) ;
 struct inet6_dev* in6_dev_get (struct net_device*) ;
 int in6_dev_put (struct inet6_dev*) ;
 struct rt6_info* ip6_dst_alloc (struct net*,struct net_device*,int ) ;
 int ip6_input ;
 int ip6_output ;
 int rt6_uncached_list_add (struct rt6_info*) ;
 scalar_t__ unlikely (int) ;
 struct dst_entry* xfrm_lookup (struct net*,TYPE_4__*,int ,int *,int ) ;

struct dst_entry *icmp6_dst_alloc(struct net_device *dev,
      struct flowi6 *fl6)
{
 struct dst_entry *dst;
 struct rt6_info *rt;
 struct inet6_dev *idev = in6_dev_get(dev);
 struct net *net = dev_net(dev);

 if (unlikely(!idev))
  return ERR_PTR(-ENODEV);

 rt = ip6_dst_alloc(net, dev, 0);
 if (unlikely(!rt)) {
  in6_dev_put(idev);
  dst = ERR_PTR(-ENOMEM);
  goto out;
 }

 rt->dst.flags |= DST_HOST;
 rt->dst.input = ip6_input;
 rt->dst.output = ip6_output;
 rt->rt6i_gateway = fl6->daddr;
 rt->rt6i_dst.addr = fl6->daddr;
 rt->rt6i_dst.plen = 128;
 rt->rt6i_idev = idev;
 dst_metric_set(&rt->dst, RTAX_HOPLIMIT, 0);




 rt6_uncached_list_add(rt);
 atomic_inc(&net->ipv6.rt6_stats->fib_rt_uncache);

 dst = xfrm_lookup(net, &rt->dst, flowi6_to_flowi(fl6), ((void*)0), 0);

out:
 return dst;
}
