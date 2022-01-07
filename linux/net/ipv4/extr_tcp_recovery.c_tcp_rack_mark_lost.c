
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ advanced; } ;
struct tcp_sock {TYPE_1__ rack; } ;
struct sock {int dummy; } ;
struct TYPE_4__ {int icsk_rto; } ;


 int ICSK_TIME_REO_TIMEOUT ;
 scalar_t__ TCP_TIMEOUT_MIN ;
 TYPE_2__* inet_csk (struct sock*) ;
 int inet_csk_reset_xmit_timer (struct sock*,int ,scalar_t__,int ) ;
 int tcp_rack_detect_loss (struct sock*,scalar_t__*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 scalar_t__ usecs_to_jiffies (scalar_t__) ;

void tcp_rack_mark_lost(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);
 u32 timeout;

 if (!tp->rack.advanced)
  return;


 tp->rack.advanced = 0;
 tcp_rack_detect_loss(sk, &timeout);
 if (timeout) {
  timeout = usecs_to_jiffies(timeout) + TCP_TIMEOUT_MIN;
  inet_csk_reset_xmit_timer(sk, ICSK_TIME_REO_TIMEOUT,
       timeout, inet_csk(sk)->icsk_rto);
 }
}
