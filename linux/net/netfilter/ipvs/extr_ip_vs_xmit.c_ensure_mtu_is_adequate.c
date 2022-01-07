
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; int dev; } ;
struct netns_ipvs {struct net* net; } ;
struct net {int loopback_dev; } ;
struct ip_vs_iphdr {int fragoffs; } ;
struct TYPE_4__ {int frag_off; int saddr; } ;
struct TYPE_3__ {int saddr; } ;


 int AF_INET6 ;
 int ICMPV6_PKT_TOOBIG ;
 int ICMP_DEST_UNREACH ;
 int ICMP_FRAG_NEEDED ;
 int IP_DF ;
 int IP_VS_DBG (int,char*,int *) ;
 int IP_VS_RT_MODE_TUNNEL ;
 int __mtu_check_toobig_v6 (struct sk_buff*,int) ;
 int htonl (int) ;
 int htons (int ) ;
 int icmp_send (struct sk_buff*,int ,int ,int ) ;
 int icmpv6_send (struct sk_buff*,int ,int ,int) ;
 TYPE_2__* ip_hdr (struct sk_buff*) ;
 int ip_vs_iph_icmp (struct ip_vs_iphdr*) ;
 TYPE_1__* ipv6_hdr (struct sk_buff*) ;
 int skb_is_gso (struct sk_buff*) ;
 int sysctl_pmtu_disc (struct netns_ipvs*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline bool ensure_mtu_is_adequate(struct netns_ipvs *ipvs, int skb_af,
       int rt_mode,
       struct ip_vs_iphdr *ipvsh,
       struct sk_buff *skb, int mtu)
{
 {



  if ((rt_mode & IP_VS_RT_MODE_TUNNEL) && !sysctl_pmtu_disc(ipvs))
   return 1;

  if (unlikely(ip_hdr(skb)->frag_off & htons(IP_DF) &&
        skb->len > mtu && !skb_is_gso(skb) &&
        !ip_vs_iph_icmp(ipvsh))) {
   icmp_send(skb, ICMP_DEST_UNREACH, ICMP_FRAG_NEEDED,
      htonl(mtu));
   IP_VS_DBG(1, "frag needed for %pI4\n",
      &ip_hdr(skb)->saddr);
   return 0;
  }
 }

 return 1;
}
