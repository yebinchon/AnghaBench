
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int cksum; int seq; } ;
struct rxrpc_skb_priv {TYPE_2__ hdr; } ;
struct rxrpc_call {TYPE_1__* security; } ;
typedef int rxrpc_seq_t ;
typedef int __be16 ;
struct TYPE_3__ {int (* verify_packet ) (struct rxrpc_call*,struct sk_buff*,unsigned int,unsigned int,int ,int ) ;} ;


 int BUG () ;
 scalar_t__ RXRPC_RX_ANNO_SUBPACKET ;
 int _enter (char*) ;
 int ntohs (int ) ;
 struct rxrpc_skb_priv* rxrpc_skb (struct sk_buff*) ;
 scalar_t__ skb_copy_bits (struct sk_buff*,unsigned int,int *,int) ;
 int stub1 (struct rxrpc_call*,struct sk_buff*,unsigned int,unsigned int,int ,int ) ;

__attribute__((used)) static int rxrpc_verify_packet(struct rxrpc_call *call, struct sk_buff *skb,
          u8 annotation,
          unsigned int offset, unsigned int len)
{
 struct rxrpc_skb_priv *sp = rxrpc_skb(skb);
 rxrpc_seq_t seq = sp->hdr.seq;
 u16 cksum = sp->hdr.cksum;
 u8 subpacket = annotation & RXRPC_RX_ANNO_SUBPACKET;

 _enter("");




 if (subpacket > 0) {
  __be16 tmp;
  if (skb_copy_bits(skb, offset - 2, &tmp, 2) < 0)
   BUG();
  cksum = ntohs(tmp);
  seq += subpacket;
 }

 return call->security->verify_packet(call, skb, offset, len,
          seq, cksum);
}
