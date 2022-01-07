
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int ee_errno; scalar_t__ ee_data; int ee_info; scalar_t__ ee_pad; int ee_code; int ee_type; int ee_origin; } ;
struct sock_exterr_skb {int port; int * addr_offset; TYPE_1__ ee; } ;
struct sock {int dummy; } ;
struct sk_buff {int data; } ;
struct iphdr {int daddr; } ;
typedef int __be16 ;
struct TYPE_4__ {int code; int type; } ;


 int GFP_ATOMIC ;
 struct sock_exterr_skb* SKB_EXT_ERR (struct sk_buff*) ;
 int SO_EE_ORIGIN_ICMP ;
 TYPE_2__* icmp_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 int skb_network_header (struct sk_buff*) ;
 scalar_t__ skb_pull (struct sk_buff*,int *) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 scalar_t__ sock_queue_err_skb (struct sock*,struct sk_buff*) ;

void ip_icmp_error(struct sock *sk, struct sk_buff *skb, int err,
     __be16 port, u32 info, u8 *payload)
{
 struct sock_exterr_skb *serr;

 skb = skb_clone(skb, GFP_ATOMIC);
 if (!skb)
  return;

 serr = SKB_EXT_ERR(skb);
 serr->ee.ee_errno = err;
 serr->ee.ee_origin = SO_EE_ORIGIN_ICMP;
 serr->ee.ee_type = icmp_hdr(skb)->type;
 serr->ee.ee_code = icmp_hdr(skb)->code;
 serr->ee.ee_pad = 0;
 serr->ee.ee_info = info;
 serr->ee.ee_data = 0;
 serr->addr_offset = (u8 *)&(((struct iphdr *)(icmp_hdr(skb) + 1))->daddr) -
       skb_network_header(skb);
 serr->port = port;

 if (skb_pull(skb, payload - skb->data)) {
  skb_reset_transport_header(skb);
  if (sock_queue_err_skb(sk, skb) == 0)
   return;
 }
 kfree_skb(skb);
}
