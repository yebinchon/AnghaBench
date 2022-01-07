
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_timewait_sock {int tw_rcv_wnd; int tw_ts_recent; scalar_t__ tw_ts_offset; int tw_rcv_nxt; int tw_snd_nxt; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct inet_timewait_sock {int tw_rcv_wscale; int tw_tos; scalar_t__ tw_transparent; int tw_bound_dev_if; } ;


 int IP_REPLY_ARG_NOSRCCHECK ;
 struct inet_timewait_sock* inet_twsk (struct sock*) ;
 int inet_twsk_put (struct inet_timewait_sock*) ;
 scalar_t__ tcp_time_stamp_raw () ;
 struct tcp_timewait_sock* tcp_twsk (struct sock*) ;
 int tcp_twsk_md5_key (struct tcp_timewait_sock*) ;
 int tcp_v4_send_ack (struct sock*,struct sk_buff*,int ,int ,int,scalar_t__,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void tcp_v4_timewait_ack(struct sock *sk, struct sk_buff *skb)
{
 struct inet_timewait_sock *tw = inet_twsk(sk);
 struct tcp_timewait_sock *tcptw = tcp_twsk(sk);

 tcp_v4_send_ack(sk, skb,
   tcptw->tw_snd_nxt, tcptw->tw_rcv_nxt,
   tcptw->tw_rcv_wnd >> tw->tw_rcv_wscale,
   tcp_time_stamp_raw() + tcptw->tw_ts_offset,
   tcptw->tw_ts_recent,
   tw->tw_bound_dev_if,
   tcp_twsk_md5_key(tcptw),
   tw->tw_transparent ? IP_REPLY_ARG_NOSRCCHECK : 0,
   tw->tw_tos
   );

 inet_twsk_put(tw);
}
