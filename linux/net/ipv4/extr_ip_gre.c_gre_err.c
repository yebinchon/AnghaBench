
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tnl_ptk_info {int dummy; } ;
struct sk_buff {TYPE_2__* dev; scalar_t__ data; } ;
struct iphdr {int ihl; } ;
struct TYPE_4__ {int ifindex; } ;
struct TYPE_3__ {int type; int code; } ;


 int ETH_P_IP ;
 int const ICMP_DEST_UNREACH ;
 int const ICMP_FRAG_NEEDED ;
 int const ICMP_REDIRECT ;
 int IPPROTO_GRE ;
 int dev_net (TYPE_2__*) ;
 scalar_t__ gre_parse_header (struct sk_buff*,struct tnl_ptk_info*,int *,int ,int) ;
 int htons (int ) ;
 TYPE_1__* icmp_hdr (struct sk_buff*) ;
 int ipgre_err (struct sk_buff*,int ,struct tnl_ptk_info*) ;
 int ipv4_redirect (struct sk_buff*,int ,int ,int ) ;
 int ipv4_update_pmtu (struct sk_buff*,int ,int ,int ,int ) ;

__attribute__((used)) static void gre_err(struct sk_buff *skb, u32 info)
{
 const struct iphdr *iph = (struct iphdr *)skb->data;
 const int type = icmp_hdr(skb)->type;
 const int code = icmp_hdr(skb)->code;
 struct tnl_ptk_info tpi;

 if (gre_parse_header(skb, &tpi, ((void*)0), htons(ETH_P_IP),
        iph->ihl * 4) < 0)
  return;

 if (type == ICMP_DEST_UNREACH && code == ICMP_FRAG_NEEDED) {
  ipv4_update_pmtu(skb, dev_net(skb->dev), info,
     skb->dev->ifindex, IPPROTO_GRE);
  return;
 }
 if (type == ICMP_REDIRECT) {
  ipv4_redirect(skb, dev_net(skb->dev), skb->dev->ifindex,
         IPPROTO_GRE);
  return;
 }

 ipgre_err(skb, info, &tpi);
}
