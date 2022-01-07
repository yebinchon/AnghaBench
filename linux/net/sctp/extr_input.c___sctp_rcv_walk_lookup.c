
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union sctp_addr {int dummy; } sctp_addr ;
struct sk_buff {scalar_t__ data; } ;
struct sctp_transport {int dummy; } ;
struct sctp_chunkhdr {int type; int length; } ;
struct sctp_association {int dummy; } ;
struct TYPE_3__ {int addip_noauth; } ;
struct net {TYPE_1__ sctp; } ;
typedef int __u8 ;
struct TYPE_4__ {int source; } ;





 int SCTP_PAD4 (int) ;
 struct sctp_association* __sctp_rcv_asconf_lookup (struct net*,struct sctp_chunkhdr*,union sctp_addr const*,int ,struct sctp_transport**) ;
 int ntohs (int ) ;
 TYPE_2__* sctp_hdr (struct sk_buff*) ;
 int * skb_tail_pointer (struct sk_buff*) ;

__attribute__((used)) static struct sctp_association *__sctp_rcv_walk_lookup(struct net *net,
          struct sk_buff *skb,
          const union sctp_addr *laddr,
          struct sctp_transport **transportp)
{
 struct sctp_association *asoc = ((void*)0);
 struct sctp_chunkhdr *ch;
 int have_auth = 0;
 unsigned int chunk_num = 1;
 __u8 *ch_end;




 ch = (struct sctp_chunkhdr *)skb->data;
 do {

  if (ntohs(ch->length) < sizeof(*ch))
   break;

  ch_end = ((__u8 *)ch) + SCTP_PAD4(ntohs(ch->length));
  if (ch_end > skb_tail_pointer(skb))
   break;

  switch (ch->type) {
  case 129:
   have_auth = chunk_num;
   break;

  case 128:







   if (have_auth == 1 && chunk_num == 2)
    return ((void*)0);
   break;

  case 130:
   if (have_auth || net->sctp.addip_noauth)
    asoc = __sctp_rcv_asconf_lookup(
      net, ch, laddr,
      sctp_hdr(skb)->source,
      transportp);
  default:
   break;
  }

  if (asoc)
   break;

  ch = (struct sctp_chunkhdr *)ch_end;
  chunk_num++;
 } while (ch_end < skb_tail_pointer(skb));

 return asoc;
}
