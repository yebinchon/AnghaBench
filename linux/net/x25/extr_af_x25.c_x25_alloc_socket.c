
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x25_sock {int interrupt_out_queue; int interrupt_in_queue; int fragment_queue; int ack_queue; } ;
struct sock {int dummy; } ;
struct net {int dummy; } ;


 int AF_X25 ;
 int GFP_ATOMIC ;
 struct sock* sk_alloc (struct net*,int ,int ,int *,int) ;
 int skb_queue_head_init (int *) ;
 int sock_init_data (int *,struct sock*) ;
 int x25_proto ;
 struct x25_sock* x25_sk (struct sock*) ;

__attribute__((used)) static struct sock *x25_alloc_socket(struct net *net, int kern)
{
 struct x25_sock *x25;
 struct sock *sk = sk_alloc(net, AF_X25, GFP_ATOMIC, &x25_proto, kern);

 if (!sk)
  goto out;

 sock_init_data(((void*)0), sk);

 x25 = x25_sk(sk);
 skb_queue_head_init(&x25->ack_queue);
 skb_queue_head_init(&x25->fragment_queue);
 skb_queue_head_init(&x25->interrupt_in_queue);
 skb_queue_head_init(&x25->interrupt_out_queue);
out:
 return sk;
}
