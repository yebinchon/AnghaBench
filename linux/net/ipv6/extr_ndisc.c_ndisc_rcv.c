
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct neighbour_cb {int dummy; } ;
struct TYPE_3__ {int icmp6_code; int icmp6_type; } ;
struct nd_msg {TYPE_1__ icmph; } ;
struct TYPE_4__ {int hop_limit; } ;







 int ND_PRINTK (int,int ,char*,int) ;
 int NEIGH_CB (struct sk_buff*) ;
 int __skb_push (struct sk_buff*,scalar_t__) ;
 TYPE_2__* ipv6_hdr (struct sk_buff*) ;
 int memset (int ,int ,int) ;
 int ndisc_recv_na (struct sk_buff*) ;
 int ndisc_recv_ns (struct sk_buff*) ;
 int ndisc_recv_rs (struct sk_buff*) ;
 int ndisc_redirect_rcv (struct sk_buff*) ;
 int ndisc_router_discovery (struct sk_buff*) ;
 scalar_t__ ndisc_suppress_frag_ndisc (struct sk_buff*) ;
 scalar_t__ skb_linearize (struct sk_buff*) ;
 scalar_t__ skb_transport_header (struct sk_buff*) ;
 int warn ;

int ndisc_rcv(struct sk_buff *skb)
{
 struct nd_msg *msg;

 if (ndisc_suppress_frag_ndisc(skb))
  return 0;

 if (skb_linearize(skb))
  return 0;

 msg = (struct nd_msg *)skb_transport_header(skb);

 __skb_push(skb, skb->data - skb_transport_header(skb));

 if (ipv6_hdr(skb)->hop_limit != 255) {
  ND_PRINTK(2, warn, "NDISC: invalid hop-limit: %d\n",
     ipv6_hdr(skb)->hop_limit);
  return 0;
 }

 if (msg->icmph.icmp6_code != 0) {
  ND_PRINTK(2, warn, "NDISC: invalid ICMPv6 code: %d\n",
     msg->icmph.icmp6_code);
  return 0;
 }

 switch (msg->icmph.icmp6_type) {
 case 131:
  memset(NEIGH_CB(skb), 0, sizeof(struct neighbour_cb));
  ndisc_recv_ns(skb);
  break;

 case 132:
  ndisc_recv_na(skb);
  break;

 case 128:
  ndisc_recv_rs(skb);
  break;

 case 129:
  ndisc_router_discovery(skb);
  break;

 case 130:
  ndisc_redirect_rcv(skb);
  break;
 }

 return 0;
}
