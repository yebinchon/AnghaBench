
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tcp_sock {scalar_t__ compressed_ack; scalar_t__ rcv_nxt; int compressed_ack_timer; } ;
struct sock {int dummy; } ;


 int ICSK_TIME_DACK ;
 int LINUX_MIB_TCPACKCOMPRESSED ;
 int NET_ADD_STATS (int ,int ,scalar_t__) ;
 scalar_t__ TCP_FASTRETRANS_THRESH ;
 int __sock_put (struct sock*) ;
 int hrtimer_try_to_cancel (int *) ;
 int inet_csk_clear_xmit_timer (struct sock*,int ) ;
 int sock_net (struct sock*) ;
 int tcp_dec_quickack_mode (struct sock*,unsigned int) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void tcp_event_ack_sent(struct sock *sk, unsigned int pkts,
          u32 rcv_nxt)
{
 struct tcp_sock *tp = tcp_sk(sk);

 if (unlikely(tp->compressed_ack > TCP_FASTRETRANS_THRESH)) {
  NET_ADD_STATS(sock_net(sk), LINUX_MIB_TCPACKCOMPRESSED,
         tp->compressed_ack - TCP_FASTRETRANS_THRESH);
  tp->compressed_ack = TCP_FASTRETRANS_THRESH;
  if (hrtimer_try_to_cancel(&tp->compressed_ack_timer) == 1)
   __sock_put(sk);
 }

 if (unlikely(rcv_nxt != tp->rcv_nxt))
  return;
 tcp_dec_quickack_mode(sk, pkts);
 inet_csk_clear_xmit_timer(sk, ICSK_TIME_DACK);
}
