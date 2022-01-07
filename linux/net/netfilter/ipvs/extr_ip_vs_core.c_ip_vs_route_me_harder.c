
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct netns_ipvs {int net; } ;
struct dst_entry {TYPE_1__* dev; } ;
struct TYPE_4__ {int rt_flags; } ;
struct TYPE_3__ {int flags; } ;


 int AF_INET6 ;
 int IFF_LOOPBACK ;
 unsigned int NF_INET_LOCAL_IN ;
 int RTCF_LOCAL ;
 int RTN_LOCAL ;
 scalar_t__ ip6_route_me_harder (int ,struct sk_buff*) ;
 scalar_t__ ip_route_me_harder (int ,struct sk_buff*,int ) ;
 struct dst_entry* skb_dst (struct sk_buff*) ;
 TYPE_2__* skb_rtable (struct sk_buff*) ;
 int sysctl_snat_reroute (struct netns_ipvs*) ;

__attribute__((used)) static int ip_vs_route_me_harder(struct netns_ipvs *ipvs, int af,
     struct sk_buff *skb, unsigned int hooknum)
{
 if (!sysctl_snat_reroute(ipvs))
  return 0;

 if (NF_INET_LOCAL_IN == hooknum)
  return 0;
  if (!(skb_rtable(skb)->rt_flags & RTCF_LOCAL) &&
      ip_route_me_harder(ipvs->net, skb, RTN_LOCAL) != 0)
   return 1;

 return 0;
}
