
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int len; } ;
struct sco_conn {struct sock* sk; } ;


 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,struct sock*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int sco_conn_lock (struct sco_conn*) ;
 int sco_conn_unlock (struct sco_conn*) ;
 int sock_queue_rcv_skb (struct sock*,struct sk_buff*) ;

__attribute__((used)) static void sco_recv_frame(struct sco_conn *conn, struct sk_buff *skb)
{
 struct sock *sk;

 sco_conn_lock(conn);
 sk = conn->sk;
 sco_conn_unlock(conn);

 if (!sk)
  goto drop;

 BT_DBG("sk %p len %d", sk, skb->len);

 if (sk->sk_state != BT_CONNECTED)
  goto drop;

 if (!sock_queue_rcv_skb(sk, skb))
  return;

drop:
 kfree_skb(skb);
}
