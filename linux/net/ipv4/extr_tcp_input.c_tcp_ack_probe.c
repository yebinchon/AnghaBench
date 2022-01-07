
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct inet_connection_sock {scalar_t__ icsk_backoff; } ;
struct TYPE_2__ {int end_seq; } ;


 int ICSK_TIME_PROBE0 ;
 int TCP_RTO_MAX ;
 TYPE_1__* TCP_SKB_CB (struct sk_buff*) ;
 int after (int ,int ) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int inet_csk_clear_xmit_timer (struct sock*,int ) ;
 unsigned long tcp_probe0_when (struct sock*,int ) ;
 int tcp_reset_xmit_timer (struct sock*,int ,unsigned long,int ,int *) ;
 struct sk_buff* tcp_send_head (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_wnd_end (struct tcp_sock const*) ;

__attribute__((used)) static void tcp_ack_probe(struct sock *sk)
{
 struct inet_connection_sock *icsk = inet_csk(sk);
 struct sk_buff *head = tcp_send_head(sk);
 const struct tcp_sock *tp = tcp_sk(sk);


 if (!head)
  return;
 if (!after(TCP_SKB_CB(head)->end_seq, tcp_wnd_end(tp))) {
  icsk->icsk_backoff = 0;
  inet_csk_clear_xmit_timer(sk, ICSK_TIME_PROBE0);



 } else {
  unsigned long when = tcp_probe0_when(sk, TCP_RTO_MAX);

  tcp_reset_xmit_timer(sk, ICSK_TIME_PROBE0,
         when, TCP_RTO_MAX, ((void*)0));
 }
}
