
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_write_queue; } ;
struct sk_buff {int dummy; } ;


 int llc_conn_send_pdus (struct sock*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

void llc_conn_send_pdu(struct sock *sk, struct sk_buff *skb)
{

 skb_queue_tail(&sk->sk_write_queue, skb);
 llc_conn_send_pdus(sk);
}
