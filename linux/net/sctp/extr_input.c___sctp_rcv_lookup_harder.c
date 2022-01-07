
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union sctp_addr {int dummy; } sctp_addr ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct sctp_transport {int dummy; } ;
struct sctp_chunkhdr {scalar_t__ type; int length; } ;
struct sctp_association {int dummy; } ;
struct net {int dummy; } ;


 scalar_t__ SCTP_CID_INIT ;
 scalar_t__ SCTP_CID_INIT_ACK ;
 scalar_t__ SCTP_PAD4 (int ) ;
 struct sctp_association* __sctp_rcv_init_lookup (struct net*,struct sk_buff*,union sctp_addr const*,struct sctp_transport**) ;
 struct sctp_association* __sctp_rcv_walk_lookup (struct net*,struct sk_buff*,union sctp_addr const*,struct sctp_transport**) ;
 int ntohs (int ) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 scalar_t__ skb_is_gso_sctp (struct sk_buff*) ;

__attribute__((used)) static struct sctp_association *__sctp_rcv_lookup_harder(struct net *net,
          struct sk_buff *skb,
          const union sctp_addr *laddr,
          struct sctp_transport **transportp)
{
 struct sctp_chunkhdr *ch;






 if (skb_is_gso(skb) && skb_is_gso_sctp(skb))
  return ((void*)0);

 ch = (struct sctp_chunkhdr *)skb->data;






 if (SCTP_PAD4(ntohs(ch->length)) > skb->len)
  return ((void*)0);


 if (ch->type == SCTP_CID_INIT || ch->type == SCTP_CID_INIT_ACK)
  return __sctp_rcv_init_lookup(net, skb, laddr, transportp);

 return __sctp_rcv_walk_lookup(net, skb, laddr, transportp);
}
