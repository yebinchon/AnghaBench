
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int icmpv6_ratemask; } ;
struct TYPE_4__ {TYPE_1__ sysctl; } ;
struct net {TYPE_2__ ipv6; } ;


 int ICMPV6_MSG_MAX ;
 int test_bit (int,int ) ;

__attribute__((used)) static bool icmpv6_mask_allow(struct net *net, int type)
{
 if (type > ICMPV6_MSG_MAX)
  return 1;


 if (!test_bit(type, net->ipv6.sysctl.icmpv6_ratemask))
  return 1;

 return 0;
}
