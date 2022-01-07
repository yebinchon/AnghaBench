
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_4__ {int function; } ;
struct TYPE_3__ {TYPE_2__ compressed_ack_timer; TYPE_2__ pacing_timer; } ;


 int CLOCK_MONOTONIC ;
 int HRTIMER_MODE_ABS_PINNED_SOFT ;
 int HRTIMER_MODE_REL_PINNED_SOFT ;
 int hrtimer_init (TYPE_2__*,int ,int ) ;
 int inet_csk_init_xmit_timers (struct sock*,int *,int *,int *) ;
 int tcp_compressed_ack_kick ;
 int tcp_delack_timer ;
 int tcp_keepalive_timer ;
 int tcp_pace_kick ;
 TYPE_1__* tcp_sk (struct sock*) ;
 int tcp_write_timer ;

void tcp_init_xmit_timers(struct sock *sk)
{
 inet_csk_init_xmit_timers(sk, &tcp_write_timer, &tcp_delack_timer,
      &tcp_keepalive_timer);
 hrtimer_init(&tcp_sk(sk)->pacing_timer, CLOCK_MONOTONIC,
       HRTIMER_MODE_ABS_PINNED_SOFT);
 tcp_sk(sk)->pacing_timer.function = tcp_pace_kick;

 hrtimer_init(&tcp_sk(sk)->compressed_ack_timer, CLOCK_MONOTONIC,
       HRTIMER_MODE_REL_PINNED_SOFT);
 tcp_sk(sk)->compressed_ack_timer.function = tcp_compressed_ack_kick;
}
