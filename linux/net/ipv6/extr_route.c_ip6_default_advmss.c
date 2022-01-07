
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcphdr {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {unsigned int ip6_rt_min_advmss; } ;
struct TYPE_4__ {TYPE_1__ sysctl; } ;
struct net {TYPE_2__ ipv6; } ;
struct ipv6hdr {int dummy; } ;
struct dst_entry {struct net_device* dev; } ;


 int IPV6_MAXPLEN ;
 struct net* dev_net (struct net_device*) ;
 unsigned int dst_mtu (struct dst_entry const*) ;

__attribute__((used)) static unsigned int ip6_default_advmss(const struct dst_entry *dst)
{
 struct net_device *dev = dst->dev;
 unsigned int mtu = dst_mtu(dst);
 struct net *net = dev_net(dev);

 mtu -= sizeof(struct ipv6hdr) + sizeof(struct tcphdr);

 if (mtu < net->ipv6.sysctl.ip6_rt_min_advmss)
  mtu = net->ipv6.sysctl.ip6_rt_min_advmss;







 if (mtu > IPV6_MAXPLEN - sizeof(struct tcphdr))
  mtu = IPV6_MAXPLEN;
 return mtu;
}
