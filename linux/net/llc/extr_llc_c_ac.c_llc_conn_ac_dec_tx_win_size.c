
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct llc_sock {int k; int pdu_unack_q; } ;


 struct llc_sock* llc_sk (struct sock*) ;
 int skb_queue_len (int *) ;

int llc_conn_ac_dec_tx_win_size(struct sock *sk, struct sk_buff *skb)
{
 struct llc_sock *llc = llc_sk(sk);
 u8 unacked_pdu = skb_queue_len(&llc->pdu_unack_q);

 if (llc->k - unacked_pdu < 1)
  llc->k = 1;
 else
  llc->k -= unacked_pdu;
 return 0;
}
