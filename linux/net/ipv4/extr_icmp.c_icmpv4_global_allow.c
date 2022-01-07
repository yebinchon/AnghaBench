
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 scalar_t__ icmp_global_allow () ;
 scalar_t__ icmpv4_mask_allow (struct net*,int,int) ;

__attribute__((used)) static bool icmpv4_global_allow(struct net *net, int type, int code)
{
 if (icmpv4_mask_allow(net, type, code))
  return 1;

 if (icmp_global_allow())
  return 1;

 return 0;
}
