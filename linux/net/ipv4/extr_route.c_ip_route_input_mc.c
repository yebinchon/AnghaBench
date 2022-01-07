
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int input; int output; int tclassid; } ;
struct rtable {int rt_is_input; TYPE_1__ dst; } ;
struct net_device {int dummy; } ;
struct in_device {int dummy; } ;
typedef int __be32 ;
struct TYPE_4__ {int loopback_dev; } ;


 int ENOBUFS ;
 int IN_DEV_CONF_GET (struct in_device*,int ) ;
 scalar_t__ IN_DEV_MFORWARD (struct in_device*) ;
 int NOPOLICY ;
 unsigned int RTCF_LOCAL ;
 unsigned int RTCF_MULTICAST ;
 int RTN_MULTICAST ;
 int RT_CACHE_STAT_INC (int ) ;
 struct in_device* __in_dev_get_rcu (struct net_device*) ;
 TYPE_2__* dev_net (struct net_device*) ;
 int in_slow_mc ;
 int ip_mc_validate_source (struct sk_buff*,int ,int ,int ,struct net_device*,struct in_device*,int *) ;
 int ip_mr_input ;
 int ip_rt_bug ;
 int ipv4_is_local_multicast (int ) ;
 struct rtable* rt_dst_alloc (int ,unsigned int,int ,int ,int,int) ;
 int skb_dst_set (struct sk_buff*,TYPE_1__*) ;

__attribute__((used)) static int ip_route_input_mc(struct sk_buff *skb, __be32 daddr, __be32 saddr,
        u8 tos, struct net_device *dev, int our)
{
 struct in_device *in_dev = __in_dev_get_rcu(dev);
 unsigned int flags = RTCF_MULTICAST;
 struct rtable *rth;
 u32 itag = 0;
 int err;

 err = ip_mc_validate_source(skb, daddr, saddr, tos, dev, in_dev, &itag);
 if (err)
  return err;

 if (our)
  flags |= RTCF_LOCAL;

 rth = rt_dst_alloc(dev_net(dev)->loopback_dev, flags, RTN_MULTICAST,
      IN_DEV_CONF_GET(in_dev, NOPOLICY), 0, 0);
 if (!rth)
  return -ENOBUFS;




 rth->dst.output = ip_rt_bug;
 rth->rt_is_input= 1;





 RT_CACHE_STAT_INC(in_slow_mc);

 skb_dst_set(skb, &rth->dst);
 return 0;
}
