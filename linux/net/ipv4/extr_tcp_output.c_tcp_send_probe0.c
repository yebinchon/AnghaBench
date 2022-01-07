
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {scalar_t__ packets_out; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ sysctl_tcp_retries2; } ;
struct net {TYPE_1__ ipv4; } ;
struct inet_connection_sock {scalar_t__ icsk_backoff; scalar_t__ icsk_probes_out; } ;


 int ICSK_TIME_PROBE0 ;
 int LINUX_MIB_TCPWINPROBE ;
 unsigned long TCP_RESOURCE_PROBE_INTERVAL ;
 int TCP_RTO_MAX ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 struct net* sock_net (struct sock*) ;
 unsigned long tcp_probe0_when (struct sock*,int ) ;
 int tcp_reset_xmit_timer (struct sock*,int ,unsigned long,int ,int *) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 scalar_t__ tcp_write_queue_empty (struct sock*) ;
 int tcp_write_wakeup (struct sock*,int ) ;

void tcp_send_probe0(struct sock *sk)
{
 struct inet_connection_sock *icsk = inet_csk(sk);
 struct tcp_sock *tp = tcp_sk(sk);
 struct net *net = sock_net(sk);
 unsigned long timeout;
 int err;

 err = tcp_write_wakeup(sk, LINUX_MIB_TCPWINPROBE);

 if (tp->packets_out || tcp_write_queue_empty(sk)) {

  icsk->icsk_probes_out = 0;
  icsk->icsk_backoff = 0;
  return;
 }

 icsk->icsk_probes_out++;
 if (err <= 0) {
  if (icsk->icsk_backoff < net->ipv4.sysctl_tcp_retries2)
   icsk->icsk_backoff++;
  timeout = tcp_probe0_when(sk, TCP_RTO_MAX);
 } else {



  timeout = TCP_RESOURCE_PROBE_INTERVAL;
 }
 tcp_reset_xmit_timer(sk, ICSK_TIME_PROBE0, timeout, TCP_RTO_MAX, ((void*)0));
}
