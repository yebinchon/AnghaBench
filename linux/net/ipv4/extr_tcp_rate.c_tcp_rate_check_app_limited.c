
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {scalar_t__ write_seq; scalar_t__ snd_nxt; scalar_t__ mss_cache; scalar_t__ snd_cwnd; scalar_t__ lost_out; scalar_t__ retrans_out; int app_limited; scalar_t__ delivered; } ;
struct sock {int dummy; } ;


 scalar_t__ SKB_TRUESIZE (int) ;
 scalar_t__ sk_wmem_alloc_get (struct sock*) ;
 scalar_t__ tcp_packets_in_flight (struct tcp_sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

void tcp_rate_check_app_limited(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);

 if (
     tp->write_seq - tp->snd_nxt < tp->mss_cache &&

     sk_wmem_alloc_get(sk) < SKB_TRUESIZE(1) &&

     tcp_packets_in_flight(tp) < tp->snd_cwnd &&

     tp->lost_out <= tp->retrans_out)
  tp->app_limited =
   (tp->delivered + tcp_packets_in_flight(tp)) ? : 1;
}
