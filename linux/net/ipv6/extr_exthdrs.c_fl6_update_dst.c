
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt0_hdr {struct in6_addr* addr; } ;
struct ipv6_txoptions {TYPE_1__* srcrt; } ;
struct ipv6_sr_hdr {size_t segments_left; struct in6_addr* segments; } ;
struct in6_addr {int dummy; } ;
struct flowi6 {struct in6_addr daddr; } ;
struct TYPE_2__ {int type; } ;







struct in6_addr *fl6_update_dst(struct flowi6 *fl6,
    const struct ipv6_txoptions *opt,
    struct in6_addr *orig)
{
 if (!opt || !opt->srcrt)
  return ((void*)0);

 *orig = fl6->daddr;

 switch (opt->srcrt->type) {
 case 130:
 case 131:
 case 129:
  fl6->daddr = *((struct rt0_hdr *)opt->srcrt)->addr;
  break;
 case 128:
 {
  struct ipv6_sr_hdr *srh = (struct ipv6_sr_hdr *)opt->srcrt;

  fl6->daddr = srh->segments[srh->segments_left];
  break;
 }
 default:
  return ((void*)0);
 }

 return orig;
}
