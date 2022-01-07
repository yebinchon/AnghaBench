
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_xprt {int recv_mutex; int xprt; struct sock* inet; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;


 int cond_resched () ;
 int consume_skb (struct sk_buff*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sk_buff* skb_recv_udp (struct sock*,int ,int,int*) ;
 int xs_poll_check_readable (struct sock_xprt*) ;
 int xs_udp_data_read_skb (int *,struct sock*,struct sk_buff*) ;

__attribute__((used)) static void xs_udp_data_receive(struct sock_xprt *transport)
{
 struct sk_buff *skb;
 struct sock *sk;
 int err;

 mutex_lock(&transport->recv_mutex);
 sk = transport->inet;
 if (sk == ((void*)0))
  goto out;
 for (;;) {
  skb = skb_recv_udp(sk, 0, 1, &err);
  if (skb == ((void*)0))
   break;
  xs_udp_data_read_skb(&transport->xprt, sk, skb);
  consume_skb(skb);
  cond_resched();
 }
 xs_poll_check_readable(transport);
out:
 mutex_unlock(&transport->recv_mutex);
}
