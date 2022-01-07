
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcp_sock {scalar_t__ rcv_nxt; scalar_t__ rcv_wup; int window_clamp; int copied_seq; } ;
struct sock {int sk_shutdown; int sk_rmem_alloc; int sk_receive_queue; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {scalar_t__ rcv_mss; int pending; scalar_t__ blocked; } ;
struct inet_connection_sock {TYPE_1__ icsk_ack; } ;
typedef int __u32 ;
struct TYPE_4__ {int end_seq; } ;


 int ICSK_ACK_PUSHED ;
 int ICSK_ACK_PUSHED2 ;
 int RCV_SHUTDOWN ;
 TYPE_2__* TCP_SKB_CB (struct sk_buff*) ;
 int WARN (int ,char*,int ,int ,scalar_t__) ;
 int __tcp_select_window (struct sock*) ;
 int atomic_read (int *) ;
 int before (int ,int ) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 scalar_t__ inet_csk_ack_scheduled (struct sock*) ;
 int inet_csk_in_pingpong_mode (struct sock*) ;
 struct sk_buff* skb_peek (int *) ;
 int tcp_receive_window (struct tcp_sock*) ;
 int tcp_send_ack (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void tcp_cleanup_rbuf(struct sock *sk, int copied)
{
 struct tcp_sock *tp = tcp_sk(sk);
 bool time_to_ack = 0;

 struct sk_buff *skb = skb_peek(&sk->sk_receive_queue);

 WARN(skb && !before(tp->copied_seq, TCP_SKB_CB(skb)->end_seq),
      "cleanup rbuf bug: copied %X seq %X rcvnxt %X\n",
      tp->copied_seq, TCP_SKB_CB(skb)->end_seq, tp->rcv_nxt);

 if (inet_csk_ack_scheduled(sk)) {
  const struct inet_connection_sock *icsk = inet_csk(sk);


  if (icsk->icsk_ack.blocked ||

      tp->rcv_nxt - tp->rcv_wup > icsk->icsk_ack.rcv_mss ||






      (copied > 0 &&
       ((icsk->icsk_ack.pending & ICSK_ACK_PUSHED2) ||
        ((icsk->icsk_ack.pending & ICSK_ACK_PUSHED) &&
         !inet_csk_in_pingpong_mode(sk))) &&
        !atomic_read(&sk->sk_rmem_alloc)))
   time_to_ack = 1;
 }







 if (copied > 0 && !time_to_ack && !(sk->sk_shutdown & RCV_SHUTDOWN)) {
  __u32 rcv_window_now = tcp_receive_window(tp);


  if (2*rcv_window_now <= tp->window_clamp) {
   __u32 new_window = __tcp_select_window(sk);






   if (new_window && new_window >= 2 * rcv_window_now)
    time_to_ack = 1;
  }
 }
 if (time_to_ack)
  tcp_send_ack(sk);
}
