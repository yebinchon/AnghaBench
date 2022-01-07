
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sysctl_icmp_ratemask; } ;
struct net {TYPE_1__ ipv4; } ;


 int ICMP_DEST_UNREACH ;
 int ICMP_FRAG_NEEDED ;
 int NR_ICMP_TYPES ;

__attribute__((used)) static bool icmpv4_mask_allow(struct net *net, int type, int code)
{
 if (type > NR_ICMP_TYPES)
  return 1;


 if (type == ICMP_DEST_UNREACH && code == ICMP_FRAG_NEEDED)
  return 1;


 if (!((1 << type) & net->ipv4.sysctl_icmp_ratemask))
  return 1;

 return 0;
}
