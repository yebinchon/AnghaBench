
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct dn_skb_cb {unsigned short segnum; } ;
struct dn_scp {scalar_t__ other_report; int numoth_rcv; int other_receive_queue; } ;
typedef int __le16 ;


 struct dn_scp* DN_SK (struct sock*) ;
 struct dn_skb_cb* DN_SKB_CB (struct sk_buff*) ;
 int SIGURG ;
 int dn_nsp_send_oth_ack (struct sock*) ;
 scalar_t__ dn_queue_skb (struct sock*,struct sk_buff*,int ,int *) ;
 int kfree_skb (struct sk_buff*) ;
 unsigned short le16_to_cpu (int ) ;
 int seq_add (int *,int) ;
 scalar_t__ seq_next (int ,unsigned short) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static void dn_nsp_otherdata(struct sock *sk, struct sk_buff *skb)
{
 struct dn_scp *scp = DN_SK(sk);
 unsigned short segnum;
 struct dn_skb_cb *cb = DN_SKB_CB(skb);
 int queued = 0;

 if (skb->len < 2)
  goto out;

 cb->segnum = segnum = le16_to_cpu(*(__le16 *)skb->data);
 skb_pull(skb, 2);

 if (seq_next(scp->numoth_rcv, segnum)) {

  if (dn_queue_skb(sk, skb, SIGURG, &scp->other_receive_queue) == 0) {
   seq_add(&scp->numoth_rcv, 1);
   scp->other_report = 0;
   queued = 1;
  }
 }

 dn_nsp_send_oth_ack(sk);
out:
 if (!queued)
  kfree_skb(skb);
}
