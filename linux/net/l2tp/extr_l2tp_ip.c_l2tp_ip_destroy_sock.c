
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_write_queue; struct l2tp_tunnel* sk_user_data; } ;
struct sk_buff {int dummy; } ;
struct l2tp_tunnel {int dummy; } ;


 struct sk_buff* __skb_dequeue_tail (int *) ;
 int kfree_skb (struct sk_buff*) ;
 int l2tp_tunnel_delete (struct l2tp_tunnel*) ;

__attribute__((used)) static void l2tp_ip_destroy_sock(struct sock *sk)
{
 struct sk_buff *skb;
 struct l2tp_tunnel *tunnel = sk->sk_user_data;

 while ((skb = __skb_dequeue_tail(&sk->sk_write_queue)) != ((void*)0))
  kfree_skb(skb);

 if (tunnel)
  l2tp_tunnel_delete(tunnel);
}
