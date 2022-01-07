
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_14__ ;
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


struct tcphdr {int doff; int rst; } ;
struct tcp_options_received {int rcv_tsval; scalar_t__ saw_tstamp; scalar_t__ ts_recent_stamp; scalar_t__ rcv_tsecr; int ts_recent; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_24__ {unsigned long expires; } ;
struct request_sock {int num_timeout; TYPE_4__* rsk_ops; int ts_recent; scalar_t__ rsk_rcv_wnd; TYPE_9__ rsk_timer; } ;
typedef int __be32 ;
struct TYPE_20__ {int sysctl_tcp_abort_on_overflow; } ;
struct TYPE_23__ {TYPE_3__ ipv4; } ;
struct TYPE_22__ {scalar_t__ rcv_isn; scalar_t__ snt_isn; scalar_t__ rcv_nxt; int last_oow_ack_time; scalar_t__ ts_off; } ;
struct TYPE_21__ {int (* send_reset ) (struct sock*,struct sk_buff*) ;int (* send_ack ) (struct sock*,struct sk_buff*,struct request_sock*) ;} ;
struct TYPE_19__ {struct sock* (* syn_recv_sock ) (struct sock*,struct sk_buff*,struct request_sock*,int *,struct request_sock*,int*) ;} ;
struct TYPE_18__ {int rskq_defer_accept; } ;
struct TYPE_17__ {scalar_t__ seq; scalar_t__ ack_seq; scalar_t__ end_seq; } ;
struct TYPE_16__ {TYPE_2__* icsk_af_ops; TYPE_1__ icsk_accept_queue; } ;
struct TYPE_15__ {int acked; } ;


 int HZ ;
 int LINUX_MIB_EMBRYONICRSTS ;
 int LINUX_MIB_PAWSESTABREJECTED ;
 int LINUX_MIB_TCPACKSKIPPEDSYNRECV ;
 int LINUX_MIB_TCPDEFERACCEPTDROP ;
 int TCP_FLAG_ACK ;
 int TCP_FLAG_RST ;
 int TCP_FLAG_SYN ;
 int TCP_MIB_ATTEMPTFAILS ;
 int TCP_RTO_MAX ;
 TYPE_14__* TCP_SKB_CB (struct sk_buff*) ;
 int TCP_TIMEOUT_INIT ;
 int __NET_INC_STATS (TYPE_6__*,int ) ;
 int __TCP_INC_STATS (TYPE_6__*,int ) ;
 int after (scalar_t__,scalar_t__) ;
 TYPE_11__* inet_csk (struct sock*) ;
 struct sock* inet_csk_complete_hashdance (struct sock*,struct sock*,struct request_sock*,int) ;
 int inet_csk_reqsk_queue_drop (struct sock*,struct request_sock*) ;
 TYPE_10__* inet_rsk (struct request_sock*) ;
 int inet_rtx_syn_ack (struct sock*,struct request_sock*) ;
 unsigned long jiffies ;
 scalar_t__ ktime_get_seconds () ;
 scalar_t__ min (int,int ) ;
 int mod_timer_pending (TYPE_9__*,unsigned long) ;
 int reqsk_fastopen_remove (struct sock*,struct request_sock*,int) ;
 TYPE_6__* sock_net (struct sock*) ;
 int sock_rps_save_rxhash (struct sock*,struct sk_buff*) ;
 int stub1 (struct sock*,struct sk_buff*,struct request_sock*) ;
 struct sock* stub2 (struct sock*,struct sk_buff*,struct request_sock*,int *,struct request_sock*,int*) ;
 int stub3 (struct sock*,struct sk_buff*) ;
 int tcp_flag_word (struct tcphdr const*) ;
 struct tcphdr* tcp_hdr (struct sk_buff*) ;
 int tcp_in_window (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int tcp_oow_rate_limited (TYPE_6__*,struct sk_buff*,int ,int *) ;
 int tcp_parse_options (TYPE_6__*,struct sk_buff*,struct tcp_options_received*,int ,int *) ;
 int tcp_paws_reject (struct tcp_options_received*,int ) ;
 int tcp_reset (struct sock*) ;
 TYPE_5__* tcp_rsk (struct request_sock*) ;
 int tcp_synack_rtt_meas (struct sock*,struct request_sock*) ;

struct sock *tcp_check_req(struct sock *sk, struct sk_buff *skb,
      struct request_sock *req,
      bool fastopen, bool *req_stolen)
{
 struct tcp_options_received tmp_opt;
 struct sock *child;
 const struct tcphdr *th = tcp_hdr(skb);
 __be32 flg = tcp_flag_word(th) & (TCP_FLAG_RST|TCP_FLAG_SYN|TCP_FLAG_ACK);
 bool paws_reject = 0;
 bool own_req;

 tmp_opt.saw_tstamp = 0;
 if (th->doff > (sizeof(struct tcphdr)>>2)) {
  tcp_parse_options(sock_net(sk), skb, &tmp_opt, 0, ((void*)0));

  if (tmp_opt.saw_tstamp) {
   tmp_opt.ts_recent = req->ts_recent;
   if (tmp_opt.rcv_tsecr)
    tmp_opt.rcv_tsecr -= tcp_rsk(req)->ts_off;




   tmp_opt.ts_recent_stamp = ktime_get_seconds() - ((TCP_TIMEOUT_INIT/HZ)<<req->num_timeout);
   paws_reject = tcp_paws_reject(&tmp_opt, th->rst);
  }
 }


 if (TCP_SKB_CB(skb)->seq == tcp_rsk(req)->rcv_isn &&
     flg == TCP_FLAG_SYN &&
     !paws_reject) {
  if (!tcp_oow_rate_limited(sock_net(sk), skb,
       LINUX_MIB_TCPACKSKIPPEDSYNRECV,
       &tcp_rsk(req)->last_oow_ack_time) &&

      !inet_rtx_syn_ack(sk, req)) {
   unsigned long expires = jiffies;

   expires += min(TCP_TIMEOUT_INIT << req->num_timeout,
           TCP_RTO_MAX);
   if (!fastopen)
    mod_timer_pending(&req->rsk_timer, expires);
   else
    req->rsk_timer.expires = expires;
  }
  return ((void*)0);
 }
 if ((flg & TCP_FLAG_ACK) && !fastopen &&
     (TCP_SKB_CB(skb)->ack_seq !=
      tcp_rsk(req)->snt_isn + 1))
  return sk;
 if (paws_reject || !tcp_in_window(TCP_SKB_CB(skb)->seq, TCP_SKB_CB(skb)->end_seq,
       tcp_rsk(req)->rcv_nxt, tcp_rsk(req)->rcv_nxt + req->rsk_rcv_wnd)) {

  if (!(flg & TCP_FLAG_RST) &&
      !tcp_oow_rate_limited(sock_net(sk), skb,
       LINUX_MIB_TCPACKSKIPPEDSYNRECV,
       &tcp_rsk(req)->last_oow_ack_time))
   req->rsk_ops->send_ack(sk, skb, req);
  if (paws_reject)
   __NET_INC_STATS(sock_net(sk), LINUX_MIB_PAWSESTABREJECTED);
  return ((void*)0);
 }



 if (tmp_opt.saw_tstamp && !after(TCP_SKB_CB(skb)->seq, tcp_rsk(req)->rcv_nxt))
  req->ts_recent = tmp_opt.rcv_tsval;

 if (TCP_SKB_CB(skb)->seq == tcp_rsk(req)->rcv_isn) {


  flg &= ~TCP_FLAG_SYN;
 }




 if (flg & (TCP_FLAG_RST|TCP_FLAG_SYN)) {
  __TCP_INC_STATS(sock_net(sk), TCP_MIB_ATTEMPTFAILS);
  goto embryonic_reset;
 }







 if (!(flg & TCP_FLAG_ACK))
  return ((void*)0);




 if (fastopen)
  return sk;


 if (req->num_timeout < inet_csk(sk)->icsk_accept_queue.rskq_defer_accept &&
     TCP_SKB_CB(skb)->end_seq == tcp_rsk(req)->rcv_isn + 1) {
  inet_rsk(req)->acked = 1;
  __NET_INC_STATS(sock_net(sk), LINUX_MIB_TCPDEFERACCEPTDROP);
  return ((void*)0);
 }







 child = inet_csk(sk)->icsk_af_ops->syn_recv_sock(sk, skb, req, ((void*)0),
        req, &own_req);
 if (!child)
  goto listen_overflow;

 sock_rps_save_rxhash(child, skb);
 tcp_synack_rtt_meas(child, req);
 *req_stolen = !own_req;
 return inet_csk_complete_hashdance(sk, child, req, own_req);

listen_overflow:
 if (!sock_net(sk)->ipv4.sysctl_tcp_abort_on_overflow) {
  inet_rsk(req)->acked = 1;
  return ((void*)0);
 }

embryonic_reset:
 if (!(flg & TCP_FLAG_RST)) {





  req->rsk_ops->send_reset(sk, skb);
 } else if (fastopen) {
  reqsk_fastopen_remove(sk, req, 1);
  tcp_reset(sk);
 }
 if (!fastopen) {
  inet_csk_reqsk_queue_drop(sk, req);
  __NET_INC_STATS(sock_net(sk), LINUX_MIB_EMBRYONICRSTS);
 }
 return ((void*)0);
}
