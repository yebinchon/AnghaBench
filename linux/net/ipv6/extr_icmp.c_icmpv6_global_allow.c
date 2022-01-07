
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 scalar_t__ icmp_global_allow () ;
 scalar_t__ icmpv6_mask_allow (struct net*,int) ;

__attribute__((used)) static bool icmpv6_global_allow(struct net *net, int type)
{
 if (icmpv6_mask_allow(net, type))
  return 1;

 if (icmp_global_allow())
  return 1;

 return 0;
}
