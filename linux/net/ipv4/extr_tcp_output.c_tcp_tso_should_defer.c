
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct tcp_sock {int tcp_clock_cache; int tcp_wstamp_ns; int snd_cwnd; int mss_cache; int snd_wnd; int srtt_us; } ;
struct sock {int dummy; } ;
struct sk_buff {int len; int tstamp; } ;
struct inet_connection_sock {scalar_t__ icsk_ca_state; } ;
typedef int s64 ;
struct TYPE_6__ {int seq; int tcp_flags; scalar_t__ eor; } ;
struct TYPE_4__ {int sysctl_tcp_tso_win_divisor; } ;
struct TYPE_5__ {TYPE_1__ ipv4; } ;


 int BUG_ON (int) ;
 int NSEC_PER_MSEC ;
 scalar_t__ NSEC_PER_USEC ;
 int READ_ONCE (int ) ;
 int TCPHDR_FIN ;
 scalar_t__ TCP_CA_Recovery ;
 TYPE_3__* TCP_SKB_CB (struct sk_buff*) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int min (int,int) ;
 TYPE_2__* sock_net (struct sock*) ;
 int tcp_max_tso_deferred_mss (struct tcp_sock*) ;
 int tcp_packets_in_flight (struct tcp_sock*) ;
 struct sk_buff* tcp_rtx_queue_head (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_skb_pcount (struct sk_buff*) ;
 int tcp_wnd_end (struct tcp_sock*) ;
 struct sk_buff* tcp_write_queue_tail (struct sock*) ;

__attribute__((used)) static bool tcp_tso_should_defer(struct sock *sk, struct sk_buff *skb,
     bool *is_cwnd_limited,
     bool *is_rwnd_limited,
     u32 max_segs)
{
 const struct inet_connection_sock *icsk = inet_csk(sk);
 u32 send_win, cong_win, limit, in_flight;
 struct tcp_sock *tp = tcp_sk(sk);
 struct sk_buff *head;
 int win_divisor;
 s64 delta;

 if (icsk->icsk_ca_state >= TCP_CA_Recovery)
  goto send_now;






 delta = tp->tcp_clock_cache - tp->tcp_wstamp_ns - NSEC_PER_MSEC;
 if (delta > 0)
  goto send_now;

 in_flight = tcp_packets_in_flight(tp);

 BUG_ON(tcp_skb_pcount(skb) <= 1);
 BUG_ON(tp->snd_cwnd <= in_flight);

 send_win = tcp_wnd_end(tp) - TCP_SKB_CB(skb)->seq;


 cong_win = (tp->snd_cwnd - in_flight) * tp->mss_cache;

 limit = min(send_win, cong_win);


 if (limit >= max_segs * tp->mss_cache)
  goto send_now;


 if ((skb != tcp_write_queue_tail(sk)) && (limit >= skb->len))
  goto send_now;

 win_divisor = READ_ONCE(sock_net(sk)->ipv4.sysctl_tcp_tso_win_divisor);
 if (win_divisor) {
  u32 chunk = min(tp->snd_wnd, tp->snd_cwnd * tp->mss_cache);




  chunk /= win_divisor;
  if (limit >= chunk)
   goto send_now;
 } else {





  if (limit > tcp_max_tso_deferred_mss(tp) * tp->mss_cache)
   goto send_now;
 }


 head = tcp_rtx_queue_head(sk);
 if (!head)
  goto send_now;
 delta = tp->tcp_clock_cache - head->tstamp;

 if ((s64)(delta - (u64)NSEC_PER_USEC * (tp->srtt_us >> 4)) < 0)
  goto send_now;







 if (cong_win < send_win) {
  if (cong_win <= skb->len) {
   *is_cwnd_limited = 1;
   return 1;
  }
 } else {
  if (send_win <= skb->len) {
   *is_rwnd_limited = 1;
   return 1;
  }
 }


 if ((TCP_SKB_CB(skb)->tcp_flags & TCPHDR_FIN) ||
     TCP_SKB_CB(skb)->eor)
  goto send_now;

 return 1;

send_now:
 return 0;
}
