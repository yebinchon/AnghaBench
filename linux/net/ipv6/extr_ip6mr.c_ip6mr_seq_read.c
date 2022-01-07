
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int ipmr_seq; } ;
struct net {TYPE_1__ ipv6; } ;


 int ASSERT_RTNL () ;
 unsigned int ip6mr_rules_seq_read (struct net*) ;

__attribute__((used)) static unsigned int ip6mr_seq_read(struct net *net)
{
 ASSERT_RTNL();

 return net->ipv6.ipmr_seq + ip6mr_rules_seq_read(net);
}
