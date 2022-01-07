
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int ee_errno; scalar_t__ ee_data; int ee_info; scalar_t__ ee_pad; int ee_code; int ee_type; int ee_origin; } ;
struct sock_exterr_skb {int port; int * addr_offset; TYPE_1__ ee; } ;
struct sock {int dummy; } ;
struct sk_buff {int data; int protocol; } ;
struct ipv6hdr {int daddr; } ;
struct ipv6_pinfo {int recverr; } ;
struct icmp6hdr {int icmp6_code; int icmp6_type; } ;
typedef int __be16 ;


 int ETH_P_IPV6 ;
 int GFP_ATOMIC ;
 struct sock_exterr_skb* SKB_EXT_ERR (struct sk_buff*) ;
 int SO_EE_ORIGIN_ICMP6 ;
 int __skb_pull (struct sk_buff*,int *) ;
 int htons (int ) ;
 struct icmp6hdr* icmp6_hdr (struct sk_buff*) ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 int skb_network_header (struct sk_buff*) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 scalar_t__ sock_queue_err_skb (struct sock*,struct sk_buff*) ;

void ipv6_icmp_error(struct sock *sk, struct sk_buff *skb, int err,
       __be16 port, u32 info, u8 *payload)
{
 struct ipv6_pinfo *np = inet6_sk(sk);
 struct icmp6hdr *icmph = icmp6_hdr(skb);
 struct sock_exterr_skb *serr;

 if (!np->recverr)
  return;

 skb = skb_clone(skb, GFP_ATOMIC);
 if (!skb)
  return;

 skb->protocol = htons(ETH_P_IPV6);

 serr = SKB_EXT_ERR(skb);
 serr->ee.ee_errno = err;
 serr->ee.ee_origin = SO_EE_ORIGIN_ICMP6;
 serr->ee.ee_type = icmph->icmp6_type;
 serr->ee.ee_code = icmph->icmp6_code;
 serr->ee.ee_pad = 0;
 serr->ee.ee_info = info;
 serr->ee.ee_data = 0;
 serr->addr_offset = (u8 *)&(((struct ipv6hdr *)(icmph + 1))->daddr) -
      skb_network_header(skb);
 serr->port = port;

 __skb_pull(skb, payload - skb->data);
 skb_reset_transport_header(skb);

 if (sock_queue_err_skb(sk, skb))
  kfree_skb(skb);
}
