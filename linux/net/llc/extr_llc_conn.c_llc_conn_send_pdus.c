
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_write_queue; } ;
struct sk_buff {TYPE_1__* dev; } ;
struct llc_pdu_sn {int dummy; } ;
struct TYPE_4__ {int pdu_unack_q; } ;
struct TYPE_3__ {int flags; } ;


 int GFP_ATOMIC ;
 int IFF_LOOPBACK ;
 scalar_t__ LLC_PDU_TYPE_IS_I (struct llc_pdu_sn*) ;
 int dev_queue_xmit (struct sk_buff*) ;
 struct llc_pdu_sn* llc_pdu_sn_hdr (struct sk_buff*) ;
 TYPE_2__* llc_sk (struct sock*) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static void llc_conn_send_pdus(struct sock *sk)
{
 struct sk_buff *skb;

 while ((skb = skb_dequeue(&sk->sk_write_queue)) != ((void*)0)) {
  struct llc_pdu_sn *pdu = llc_pdu_sn_hdr(skb);

  if (LLC_PDU_TYPE_IS_I(pdu) &&
      !(skb->dev->flags & IFF_LOOPBACK)) {
   struct sk_buff *skb2 = skb_clone(skb, GFP_ATOMIC);

   skb_queue_tail(&llc_sk(sk)->pdu_unack_q, skb);
   if (!skb2)
    break;
   skb = skb2;
  }
  dev_queue_xmit(skb);
 }
}
