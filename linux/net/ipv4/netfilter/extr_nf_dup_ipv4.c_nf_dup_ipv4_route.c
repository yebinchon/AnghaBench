
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int protocol; int dev; } ;
struct TYPE_2__ {int dev; } ;
struct rtable {TYPE_1__ dst; } ;
struct net {int dummy; } ;
struct iphdr {int tos; } ;
struct in_addr {int s_addr; } ;
struct flowi4 {int flowi4_oif; int flowi4_flags; int flowi4_scope; int flowi4_tos; int daddr; } ;
typedef int fl4 ;


 int ETH_P_IP ;
 int FLOWI_FLAG_KNOWN_NH ;
 scalar_t__ IS_ERR (struct rtable*) ;
 int RT_SCOPE_UNIVERSE ;
 int RT_TOS (int ) ;
 int htons (int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 struct rtable* ip_route_output_key (struct net*,struct flowi4*) ;
 int memset (struct flowi4*,int ,int) ;
 int skb_dst_drop (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,TYPE_1__*) ;

__attribute__((used)) static bool nf_dup_ipv4_route(struct net *net, struct sk_buff *skb,
         const struct in_addr *gw, int oif)
{
 const struct iphdr *iph = ip_hdr(skb);
 struct rtable *rt;
 struct flowi4 fl4;

 memset(&fl4, 0, sizeof(fl4));
 if (oif != -1)
  fl4.flowi4_oif = oif;

 fl4.daddr = gw->s_addr;
 fl4.flowi4_tos = RT_TOS(iph->tos);
 fl4.flowi4_scope = RT_SCOPE_UNIVERSE;
 fl4.flowi4_flags = FLOWI_FLAG_KNOWN_NH;
 rt = ip_route_output_key(net, &fl4);
 if (IS_ERR(rt))
  return 0;

 skb_dst_drop(skb);
 skb_dst_set(skb, &rt->dst);
 skb->dev = rt->dst.dev;
 skb->protocol = htons(ETH_P_IP);

 return 1;
}
