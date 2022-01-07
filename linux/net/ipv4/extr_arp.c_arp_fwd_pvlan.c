
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct net_device* dev; } ;
struct rtable {TYPE_1__ dst; } ;
struct net_device {int dummy; } ;
struct in_device {int dummy; } ;
typedef scalar_t__ __be32 ;


 scalar_t__ IN_DEV_PROXY_ARP_PVLAN (struct in_device*) ;

__attribute__((used)) static inline int arp_fwd_pvlan(struct in_device *in_dev,
    struct net_device *dev, struct rtable *rt,
    __be32 sip, __be32 tip)
{

 if (rt->dst.dev != dev)
  return 0;


 if (sip == tip)
  return 0;

 if (IN_DEV_PROXY_ARP_PVLAN(in_dev))
  return 1;
 else
  return 0;
}
