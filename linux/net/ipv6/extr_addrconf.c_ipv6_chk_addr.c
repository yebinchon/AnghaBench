
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;


 int IFA_F_TENTATIVE ;
 int ipv6_chk_addr_and_flags (struct net*,struct in6_addr const*,struct net_device const*,int,int,int ) ;

int ipv6_chk_addr(struct net *net, const struct in6_addr *addr,
    const struct net_device *dev, int strict)
{
 return ipv6_chk_addr_and_flags(net, addr, dev, !dev,
           strict, IFA_F_TENTATIVE);
}
