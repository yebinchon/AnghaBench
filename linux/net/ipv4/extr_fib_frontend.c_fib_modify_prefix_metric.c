
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int flags; } ;
struct in_ifaddr {scalar_t__ ifa_address; scalar_t__ ifa_mask; int ifa_flags; scalar_t__ ifa_local; int ifa_prefixlen; int ifa_rt_priority; struct in_device* ifa_dev; } ;
struct in_device {struct net_device* dev; } ;
typedef scalar_t__ __be32 ;


 int IFA_F_NOPREFIXROUTE ;
 int IFA_F_SECONDARY ;
 int IFF_LOOPBACK ;
 int IFF_UP ;
 int RTM_DELROUTE ;
 int RTM_NEWROUTE ;
 int RTN_LOCAL ;
 int RTN_UNICAST ;
 int fib_magic (int ,int ,scalar_t__,int,struct in_ifaddr*,int ) ;
 scalar_t__ ipv4_is_zeronet (scalar_t__) ;

void fib_modify_prefix_metric(struct in_ifaddr *ifa, u32 new_metric)
{
 __be32 prefix = ifa->ifa_address & ifa->ifa_mask;
 struct in_device *in_dev = ifa->ifa_dev;
 struct net_device *dev = in_dev->dev;

 if (!(dev->flags & IFF_UP) ||
     ifa->ifa_flags & (IFA_F_SECONDARY | IFA_F_NOPREFIXROUTE) ||
     ipv4_is_zeronet(prefix) ||
     (prefix == ifa->ifa_local && ifa->ifa_prefixlen == 32))
  return;


 fib_magic(RTM_NEWROUTE,
    dev->flags & IFF_LOOPBACK ? RTN_LOCAL : RTN_UNICAST,
    prefix, ifa->ifa_prefixlen, ifa, new_metric);


 fib_magic(RTM_DELROUTE,
    dev->flags & IFF_LOOPBACK ? RTN_LOCAL : RTN_UNICAST,
    prefix, ifa->ifa_prefixlen, ifa, ifa->ifa_rt_priority);
}
