
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int ato; } ;
struct inet_connection_sock {TYPE_1__ icsk_ack; } ;


 int TCP_ATO_MIN ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int inet_csk_exit_pingpong_mode (struct sock*) ;
 int tcp_incr_quickack (struct sock*,unsigned int) ;

void tcp_enter_quickack_mode(struct sock *sk, unsigned int max_quickacks)
{
 struct inet_connection_sock *icsk = inet_csk(sk);

 tcp_incr_quickack(sk, max_quickacks);
 inet_csk_exit_pingpong_mode(sk);
 icsk->icsk_ack.ato = TCP_ATO_MIN;
}
