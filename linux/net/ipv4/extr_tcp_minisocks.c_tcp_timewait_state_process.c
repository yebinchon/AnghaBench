
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct tcphdr {int doff; scalar_t__ ack; int rst; scalar_t__ syn; int fin; } ;
struct tcp_timewait_sock {scalar_t__ tw_rcv_nxt; scalar_t__ tw_rcv_wnd; scalar_t__ tw_snd_nxt; scalar_t__ tw_ts_recent; void* tw_ts_recent_stamp; scalar_t__ tw_ts_offset; } ;
struct tcp_options_received {scalar_t__ rcv_tsval; scalar_t__ saw_tstamp; void* ts_recent_stamp; scalar_t__ ts_recent; scalar_t__ rcv_tsecr; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct inet_timewait_sock {scalar_t__ tw_substate; } ;
typedef scalar_t__ s32 ;
typedef enum tcp_tw_status { ____Placeholder_tcp_tw_status } tcp_tw_status ;
struct TYPE_8__ {scalar_t__ seq; scalar_t__ end_seq; scalar_t__ tcp_tw_isn; } ;
struct TYPE_6__ {scalar_t__ sysctl_tcp_rfc1337; } ;
struct TYPE_7__ {TYPE_1__ ipv4; } ;


 int LINUX_MIB_PAWSESTABREJECTED ;
 int LINUX_MIB_TCPACKSKIPPEDFINWAIT2 ;
 int LINUX_MIB_TCPACKSKIPPEDTIMEWAIT ;
 scalar_t__ TCP_FIN_WAIT2 ;
 TYPE_5__* TCP_SKB_CB (struct sk_buff*) ;
 int TCP_TIMEWAIT_LEN ;
 scalar_t__ TCP_TIME_WAIT ;
 int TCP_TW_ACK ;
 int TCP_TW_RST ;
 int TCP_TW_SUCCESS ;
 int TCP_TW_SYN ;
 int __NET_INC_STATS (TYPE_2__*,int ) ;
 scalar_t__ after (scalar_t__,scalar_t__) ;
 int before (scalar_t__,scalar_t__) ;
 int inet_twsk_deschedule_put (struct inet_timewait_sock*) ;
 int inet_twsk_put (struct inet_timewait_sock*) ;
 int inet_twsk_reschedule (struct inet_timewait_sock*,int ) ;
 void* ktime_get_seconds () ;
 int tcp_in_window (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int tcp_parse_options (TYPE_2__*,struct sk_buff*,struct tcp_options_received*,int ,int *) ;
 int tcp_paws_reject (struct tcp_options_received*,int ) ;
 int tcp_timewait_check_oow_rate_limit (struct inet_timewait_sock*,struct sk_buff*,int ) ;
 struct tcp_timewait_sock* tcp_twsk (struct sock*) ;
 TYPE_2__* twsk_net (struct inet_timewait_sock*) ;

enum tcp_tw_status
tcp_timewait_state_process(struct inet_timewait_sock *tw, struct sk_buff *skb,
      const struct tcphdr *th)
{
 struct tcp_options_received tmp_opt;
 struct tcp_timewait_sock *tcptw = tcp_twsk((struct sock *)tw);
 bool paws_reject = 0;

 tmp_opt.saw_tstamp = 0;
 if (th->doff > (sizeof(*th) >> 2) && tcptw->tw_ts_recent_stamp) {
  tcp_parse_options(twsk_net(tw), skb, &tmp_opt, 0, ((void*)0));

  if (tmp_opt.saw_tstamp) {
   if (tmp_opt.rcv_tsecr)
    tmp_opt.rcv_tsecr -= tcptw->tw_ts_offset;
   tmp_opt.ts_recent = tcptw->tw_ts_recent;
   tmp_opt.ts_recent_stamp = tcptw->tw_ts_recent_stamp;
   paws_reject = tcp_paws_reject(&tmp_opt, th->rst);
  }
 }

 if (tw->tw_substate == TCP_FIN_WAIT2) {



  if (paws_reject ||
      !tcp_in_window(TCP_SKB_CB(skb)->seq, TCP_SKB_CB(skb)->end_seq,
       tcptw->tw_rcv_nxt,
       tcptw->tw_rcv_nxt + tcptw->tw_rcv_wnd))
   return tcp_timewait_check_oow_rate_limit(
    tw, skb, LINUX_MIB_TCPACKSKIPPEDFINWAIT2);

  if (th->rst)
   goto kill;

  if (th->syn && !before(TCP_SKB_CB(skb)->seq, tcptw->tw_rcv_nxt))
   return TCP_TW_RST;


  if (!th->ack ||
      !after(TCP_SKB_CB(skb)->end_seq, tcptw->tw_rcv_nxt) ||
      TCP_SKB_CB(skb)->end_seq == TCP_SKB_CB(skb)->seq) {
   inet_twsk_put(tw);
   return TCP_TW_SUCCESS;
  }




  if (!th->fin ||
      TCP_SKB_CB(skb)->end_seq != tcptw->tw_rcv_nxt + 1)
   return TCP_TW_RST;


  tw->tw_substate = TCP_TIME_WAIT;
  tcptw->tw_rcv_nxt = TCP_SKB_CB(skb)->end_seq;
  if (tmp_opt.saw_tstamp) {
   tcptw->tw_ts_recent_stamp = ktime_get_seconds();
   tcptw->tw_ts_recent = tmp_opt.rcv_tsval;
  }

  inet_twsk_reschedule(tw, TCP_TIMEWAIT_LEN);
  return TCP_TW_ACK;
 }
 if (!paws_reject &&
     (TCP_SKB_CB(skb)->seq == tcptw->tw_rcv_nxt &&
      (TCP_SKB_CB(skb)->seq == TCP_SKB_CB(skb)->end_seq || th->rst))) {


  if (th->rst) {




   if (twsk_net(tw)->ipv4.sysctl_tcp_rfc1337 == 0) {
kill:
    inet_twsk_deschedule_put(tw);
    return TCP_TW_SUCCESS;
   }
  } else {
   inet_twsk_reschedule(tw, TCP_TIMEWAIT_LEN);
  }

  if (tmp_opt.saw_tstamp) {
   tcptw->tw_ts_recent = tmp_opt.rcv_tsval;
   tcptw->tw_ts_recent_stamp = ktime_get_seconds();
  }

  inet_twsk_put(tw);
  return TCP_TW_SUCCESS;
 }
 if (th->syn && !th->rst && !th->ack && !paws_reject &&
     (after(TCP_SKB_CB(skb)->seq, tcptw->tw_rcv_nxt) ||
      (tmp_opt.saw_tstamp &&
       (s32)(tcptw->tw_ts_recent - tmp_opt.rcv_tsval) < 0))) {
  u32 isn = tcptw->tw_snd_nxt + 65535 + 2;
  if (isn == 0)
   isn++;
  TCP_SKB_CB(skb)->tcp_tw_isn = isn;
  return TCP_TW_SYN;
 }

 if (paws_reject)
  __NET_INC_STATS(twsk_net(tw), LINUX_MIB_PAWSESTABREJECTED);

 if (!th->rst) {






  if (paws_reject || th->ack)
   inet_twsk_reschedule(tw, TCP_TIMEWAIT_LEN);

  return tcp_timewait_check_oow_rate_limit(
   tw, skb, LINUX_MIB_TCPACKSKIPPEDTIMEWAIT);
 }
 inet_twsk_put(tw);
 return TCP_TW_SUCCESS;
}
