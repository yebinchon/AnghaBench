
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int dev; } ;
struct rt6_info {int rt6i_flags; TYPE_3__ dst; } ;
struct TYPE_4__ {int ip6_rt_mtu_expires; } ;
struct TYPE_5__ {TYPE_1__ sysctl; } ;
struct net {TYPE_2__ ipv6; } ;


 int RTAX_MTU ;
 int RTF_MODIFIED ;
 struct net* dev_net (int ) ;
 int dst_metric_set (TYPE_3__*,int ,int ) ;
 int rt6_update_expires (struct rt6_info*,int ) ;

__attribute__((used)) static void rt6_do_update_pmtu(struct rt6_info *rt, u32 mtu)
{
 struct net *net = dev_net(rt->dst.dev);

 dst_metric_set(&rt->dst, RTAX_MTU, mtu);
 rt->rt6i_flags |= RTF_MODIFIED;
 rt6_update_expires(rt, net->ipv6.sysctl.ip6_rt_mtu_expires);
}
