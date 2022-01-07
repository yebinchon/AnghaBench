
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; int network_header; int transport_header; } ;
struct net {int dummy; } ;
struct iphdr {int version; int ihl; int tot_len; int protocol; void* saddr; void* daddr; scalar_t__ frag_off; int ttl; int tos; } ;
typedef void* __be32 ;
struct TYPE_2__ {int opt; } ;


 TYPE_1__* IPCB (struct sk_buff*) ;
 int IPPROTO_IPIP ;
 int htons (int ) ;
 void* ip_hdr (struct sk_buff*) ;
 int ip_select_ident (struct net*,struct sk_buff*,int *) ;
 int ip_send_check (struct iphdr*) ;
 int memset (int *,int ,int) ;
 int nf_reset_ct (struct sk_buff*) ;
 int skb_push (struct sk_buff*,int) ;
 int skb_reset_network_header (struct sk_buff*) ;

__attribute__((used)) static void ip_encap(struct net *net, struct sk_buff *skb,
       __be32 saddr, __be32 daddr)
{
 struct iphdr *iph;
 const struct iphdr *old_iph = ip_hdr(skb);

 skb_push(skb, sizeof(struct iphdr));
 skb->transport_header = skb->network_header;
 skb_reset_network_header(skb);
 iph = ip_hdr(skb);

 iph->version = 4;
 iph->tos = old_iph->tos;
 iph->ttl = old_iph->ttl;
 iph->frag_off = 0;
 iph->daddr = daddr;
 iph->saddr = saddr;
 iph->protocol = IPPROTO_IPIP;
 iph->ihl = 5;
 iph->tot_len = htons(skb->len);
 ip_select_ident(net, skb, ((void*)0));
 ip_send_check(iph);

 memset(&(IPCB(skb)->opt), 0, sizeof(IPCB(skb)->opt));
 nf_reset_ct(skb);
}
