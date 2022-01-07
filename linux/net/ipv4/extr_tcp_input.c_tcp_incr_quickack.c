
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_3__ {int rcv_mss; unsigned int quick; } ;
struct inet_connection_sock {TYPE_1__ icsk_ack; } ;
struct TYPE_4__ {int rcv_wnd; } ;


 struct inet_connection_sock* inet_csk (struct sock*) ;
 unsigned int min (unsigned int,unsigned int) ;
 TYPE_2__* tcp_sk (struct sock*) ;

__attribute__((used)) static void tcp_incr_quickack(struct sock *sk, unsigned int max_quickacks)
{
 struct inet_connection_sock *icsk = inet_csk(sk);
 unsigned int quickacks = tcp_sk(sk)->rcv_wnd / (2 * icsk->icsk_ack.rcv_mss);

 if (quickacks == 0)
  quickacks = 2;
 quickacks = min(quickacks, max_quickacks);
 if (quickacks > icsk->icsk_ack.quick)
  icsk->icsk_ack.quick = quickacks;
}
