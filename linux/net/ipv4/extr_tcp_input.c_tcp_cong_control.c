
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sock {int dummy; } ;
struct rate_sample {int dummy; } ;
struct inet_connection_sock {TYPE_1__* icsk_ca_ops; } ;
struct TYPE_2__ {int (* cong_control ) (struct sock*,struct rate_sample const*) ;} ;


 struct inet_connection_sock* inet_csk (struct sock*) ;
 int stub1 (struct sock*,struct rate_sample const*) ;
 int tcp_cong_avoid (struct sock*,int ,int ) ;
 int tcp_cwnd_reduction (struct sock*,int ,int) ;
 scalar_t__ tcp_in_cwnd_reduction (struct sock*) ;
 scalar_t__ tcp_may_raise_cwnd (struct sock*,int) ;
 int tcp_update_pacing_rate (struct sock*) ;

__attribute__((used)) static void tcp_cong_control(struct sock *sk, u32 ack, u32 acked_sacked,
        int flag, const struct rate_sample *rs)
{
 const struct inet_connection_sock *icsk = inet_csk(sk);

 if (icsk->icsk_ca_ops->cong_control) {
  icsk->icsk_ca_ops->cong_control(sk, rs);
  return;
 }

 if (tcp_in_cwnd_reduction(sk)) {

  tcp_cwnd_reduction(sk, acked_sacked, flag);
 } else if (tcp_may_raise_cwnd(sk, flag)) {

  tcp_cong_avoid(sk, ack, acked_sacked);
 }
 tcp_update_pacing_rate(sk);
}
