
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_destruct; } ;
struct TYPE_2__ {int reader_queue; } ;


 int skb_queue_head_init (int *) ;
 int udp_destruct_sock ;
 TYPE_1__* udp_sk (struct sock*) ;

int udp_init_sock(struct sock *sk)
{
 skb_queue_head_init(&udp_sk(sk)->reader_queue);
 sk->sk_destruct = udp_destruct_sock;
 return 0;
}
