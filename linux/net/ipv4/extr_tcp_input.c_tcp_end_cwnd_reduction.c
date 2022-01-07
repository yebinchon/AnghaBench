
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcp_sock {scalar_t__ snd_ssthresh; scalar_t__ snd_cwnd; int snd_cwnd_stamp; scalar_t__ undo_marker; } ;
struct sock {int dummy; } ;
struct TYPE_4__ {scalar_t__ icsk_ca_state; TYPE_1__* icsk_ca_ops; } ;
struct TYPE_3__ {scalar_t__ cong_control; } ;


 int CA_EVENT_COMPLETE_CWR ;
 scalar_t__ TCP_CA_CWR ;
 scalar_t__ TCP_INFINITE_SSTHRESH ;
 TYPE_2__* inet_csk (struct sock*) ;
 int tcp_ca_event (struct sock*,int ) ;
 int tcp_jiffies32 ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static inline void tcp_end_cwnd_reduction(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);

 if (inet_csk(sk)->icsk_ca_ops->cong_control)
  return;


 if (tp->snd_ssthresh < TCP_INFINITE_SSTHRESH &&
     (inet_csk(sk)->icsk_ca_state == TCP_CA_CWR || tp->undo_marker)) {
  tp->snd_cwnd = tp->snd_ssthresh;
  tp->snd_cwnd_stamp = tcp_jiffies32;
 }
 tcp_ca_event(sk, CA_EVENT_COMPLETE_CWR);
}
