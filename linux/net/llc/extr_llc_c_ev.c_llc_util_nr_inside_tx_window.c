
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct llc_sock {int pdu_unack_q; TYPE_1__* dev; } ;
struct llc_pdu_sn {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int IFF_LOOPBACK ;
 int LLC_2_SEQ_NBR_MODULO ;
 int LLC_I_GET_NS (struct llc_pdu_sn*) ;
 int llc_circular_between (int,int,int) ;
 struct llc_pdu_sn* llc_pdu_sn_hdr (struct sk_buff*) ;
 struct llc_sock* llc_sk (struct sock*) ;
 struct sk_buff* skb_peek (int *) ;
 struct sk_buff* skb_peek_tail (int *) ;
 scalar_t__ skb_queue_empty (int *) ;

__attribute__((used)) static u16 llc_util_nr_inside_tx_window(struct sock *sk, u8 nr)
{
 u8 nr1, nr2;
 struct sk_buff *skb;
 struct llc_pdu_sn *pdu;
 struct llc_sock *llc = llc_sk(sk);
 int rc = 0;

 if (llc->dev->flags & IFF_LOOPBACK)
  goto out;
 rc = 1;
 if (skb_queue_empty(&llc->pdu_unack_q))
  goto out;
 skb = skb_peek(&llc->pdu_unack_q);
 pdu = llc_pdu_sn_hdr(skb);
 nr1 = LLC_I_GET_NS(pdu);
 skb = skb_peek_tail(&llc->pdu_unack_q);
 pdu = llc_pdu_sn_hdr(skb);
 nr2 = LLC_I_GET_NS(pdu);
 rc = !llc_circular_between(nr1, nr, (nr2 + 1) % LLC_2_SEQ_NBR_MODULO);
out:
 return rc;
}
