
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int tcp_rtx_queue; } ;
struct sk_buff {int dummy; } ;
struct rb_node {int dummy; } ;


 struct rb_node* rb_first (int *) ;
 struct rb_node* rb_next (struct rb_node*) ;
 struct sk_buff* rb_to_skb (struct rb_node*) ;
 int sk_wmem_free_skb (struct sock*,struct sk_buff*) ;
 int tcp_rtx_queue_unlink (struct sk_buff*,struct sock*) ;

__attribute__((used)) static void tcp_rtx_queue_purge(struct sock *sk)
{
 struct rb_node *p = rb_first(&sk->tcp_rtx_queue);

 while (p) {
  struct sk_buff *skb = rb_to_skb(p);

  p = rb_next(p);



  tcp_rtx_queue_unlink(skb, sk);
  sk_wmem_free_skb(sk, skb);
 }
}
