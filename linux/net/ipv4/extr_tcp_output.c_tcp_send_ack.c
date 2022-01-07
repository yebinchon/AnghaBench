
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int rcv_nxt; } ;


 int __tcp_send_ack (struct sock*,int ) ;
 TYPE_1__* tcp_sk (struct sock*) ;

void tcp_send_ack(struct sock *sk)
{
 __tcp_send_ack(sk, tcp_sk(sk)->rcv_nxt);
}
