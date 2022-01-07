
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int ee_errno; scalar_t__ ee_data; int ee_info; scalar_t__ ee_pad; scalar_t__ ee_code; scalar_t__ ee_type; int ee_origin; } ;
struct sock_exterr_skb {int port; int * addr_offset; TYPE_1__ ee; } ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct iphdr {int daddr; } ;
struct inet_sock {int recverr; } ;
typedef int __be32 ;
typedef int __be16 ;


 int GFP_ATOMIC ;
 struct sock_exterr_skb* SKB_EXT_ERR (struct sk_buff*) ;
 int SO_EE_ORIGIN_LOCAL ;
 int __skb_pull (struct sk_buff*,scalar_t__) ;
 struct sk_buff* alloc_skb (int,int ) ;
 struct inet_sock* inet_sk (struct sock*) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int skb_network_header (struct sk_buff*) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 scalar_t__ skb_tail_pointer (struct sk_buff*) ;
 scalar_t__ sock_queue_err_skb (struct sock*,struct sk_buff*) ;

void ip_local_error(struct sock *sk, int err, __be32 daddr, __be16 port, u32 info)
{
 struct inet_sock *inet = inet_sk(sk);
 struct sock_exterr_skb *serr;
 struct iphdr *iph;
 struct sk_buff *skb;

 if (!inet->recverr)
  return;

 skb = alloc_skb(sizeof(struct iphdr), GFP_ATOMIC);
 if (!skb)
  return;

 skb_put(skb, sizeof(struct iphdr));
 skb_reset_network_header(skb);
 iph = ip_hdr(skb);
 iph->daddr = daddr;

 serr = SKB_EXT_ERR(skb);
 serr->ee.ee_errno = err;
 serr->ee.ee_origin = SO_EE_ORIGIN_LOCAL;
 serr->ee.ee_type = 0;
 serr->ee.ee_code = 0;
 serr->ee.ee_pad = 0;
 serr->ee.ee_info = info;
 serr->ee.ee_data = 0;
 serr->addr_offset = (u8 *)&iph->daddr - skb_network_header(skb);
 serr->port = port;

 __skb_pull(skb, skb_tail_pointer(skb) - skb->data);
 skb_reset_transport_header(skb);

 if (sock_queue_err_skb(sk, skb))
  kfree_skb(skb);
}
