
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u32 ;
struct tcphdr {int dummy; } ;
struct TYPE_7__ {int snd_wscale; int rcv_wscale; int mss_clamp; scalar_t__ ts_recent_stamp; int ts_recent; scalar_t__ tstamp_ok; scalar_t__ wscale_ok; int sack_ok; } ;
struct tcp_sock {int segs_in; void* pushed_seq; int snd_wnd; int max_window; int tcp_header_len; int fastopen_rsk; int * fastopen_req; TYPE_3__ rx_opt; TYPE_1__* af_specific; int * md5sig_info; int tsoffset; int retrans_stamp; void* undo_marker; int window_clamp; int rcv_wnd; int rcv_ssthresh; int write_seq; int total_retrans; void* lsndtime; int rtt_min; int tsorted_sent_queue; int tsq_node; void* snd_up; int snd_nxt; void* snd_una; void* snd_sml; int rcv_nxt; int copied_seq; void* rcv_wup; scalar_t__ pred_flags; } ;
struct tcp_request_sock {int ts_off; int snt_synack; void* snt_isn; int txhash; void* rcv_isn; } ;
typedef struct sock {int sk_txhash; } const sock ;
struct sk_buff {scalar_t__ len; } ;
struct request_sock {int mss; scalar_t__ num_timeout; int ts_recent; int rsk_rcv_wnd; int rsk_window_clamp; int num_retrans; } ;
struct inet_request_sock {int snd_wscale; int rcv_wscale; scalar_t__ wscale_ok; int sack_ok; scalar_t__ tstamp_ok; } ;
struct TYPE_6__ {scalar_t__ last_seg_size; void* lrcvtime; } ;
struct inet_connection_sock {TYPE_2__ icsk_ack; } ;
struct TYPE_8__ {int window; } ;
struct TYPE_5__ {scalar_t__ (* md5_lookup ) (struct sock const*,struct sock const*) ;} ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int RCU_INIT_POINTER (int ,int *) ;
 int SOCK_KEEPOPEN ;
 scalar_t__ TCPOLEN_MD5SIG_ALIGNED ;
 int TCPOLEN_TSTAMP_ALIGNED ;
 int TCP_MIB_PASSIVEOPENS ;
 scalar_t__ TCP_MSS_DEFAULT ;
 int TCP_TS_HZ ;
 int USEC_PER_SEC ;
 int WRITE_ONCE (int ,void*) ;
 int __TCP_INC_STATS (int ,int ) ;
 int div_u64 (int ,int) ;
 struct inet_connection_sock* inet_csk (struct sock const*) ;
 struct sock const* inet_csk_clone_lock (struct sock const*,struct request_sock*,int ) ;
 int inet_csk_reset_keepalive_timer (struct sock const*,int ) ;
 struct inet_request_sock* inet_rsk (struct request_sock*) ;
 int keepalive_time_when (struct tcp_sock*) ;
 scalar_t__ ktime_get_seconds () ;
 int min (int ,unsigned int) ;
 int minmax_reset (int *,void*,unsigned int) ;
 int ntohs (int ) ;
 int smc_check_reset_syn_req (struct tcp_sock*,struct request_sock*,struct tcp_sock*) ;
 scalar_t__ sock_flag (struct sock const*,int ) ;
 int sock_net (struct sock const*) ;
 scalar_t__ stub1 (struct sock const*,struct sock const*) ;
 int tcp_ecn_openreq_child (struct tcp_sock*,struct request_sock*) ;
 TYPE_4__* tcp_hdr (struct sk_buff*) ;
 int tcp_init_wl (struct tcp_sock*,void*) ;
 int tcp_init_xmit_timers (struct sock const*) ;
 void* tcp_jiffies32 ;
 struct tcp_request_sock* tcp_rsk (struct request_sock*) ;
 struct tcp_sock* tcp_sk (struct sock const*) ;

struct sock *tcp_create_openreq_child(const struct sock *sk,
          struct request_sock *req,
          struct sk_buff *skb)
{
 struct sock *newsk = inet_csk_clone_lock(sk, req, GFP_ATOMIC);
 const struct inet_request_sock *ireq = inet_rsk(req);
 struct tcp_request_sock *treq = tcp_rsk(req);
 struct inet_connection_sock *newicsk;
 struct tcp_sock *oldtp, *newtp;
 u32 seq;

 if (!newsk)
  return ((void*)0);

 newicsk = inet_csk(newsk);
 newtp = tcp_sk(newsk);
 oldtp = tcp_sk(sk);

 smc_check_reset_syn_req(oldtp, req, newtp);


 newtp->pred_flags = 0;

 seq = treq->rcv_isn + 1;
 newtp->rcv_wup = seq;
 WRITE_ONCE(newtp->copied_seq, seq);
 WRITE_ONCE(newtp->rcv_nxt, seq);
 newtp->segs_in = 1;

 seq = treq->snt_isn + 1;
 newtp->snd_sml = newtp->snd_una = seq;
 WRITE_ONCE(newtp->snd_nxt, seq);
 newtp->snd_up = seq;

 INIT_LIST_HEAD(&newtp->tsq_node);
 INIT_LIST_HEAD(&newtp->tsorted_sent_queue);

 tcp_init_wl(newtp, treq->rcv_isn);

 minmax_reset(&newtp->rtt_min, tcp_jiffies32, ~0U);
 newicsk->icsk_ack.lrcvtime = tcp_jiffies32;

 newtp->lsndtime = tcp_jiffies32;
 newsk->sk_txhash = treq->txhash;
 newtp->total_retrans = req->num_retrans;

 tcp_init_xmit_timers(newsk);
 WRITE_ONCE(newtp->write_seq, newtp->pushed_seq = treq->snt_isn + 1);

 if (sock_flag(newsk, SOCK_KEEPOPEN))
  inet_csk_reset_keepalive_timer(newsk,
            keepalive_time_when(newtp));

 newtp->rx_opt.tstamp_ok = ireq->tstamp_ok;
 newtp->rx_opt.sack_ok = ireq->sack_ok;
 newtp->window_clamp = req->rsk_window_clamp;
 newtp->rcv_ssthresh = req->rsk_rcv_wnd;
 newtp->rcv_wnd = req->rsk_rcv_wnd;
 newtp->rx_opt.wscale_ok = ireq->wscale_ok;
 if (newtp->rx_opt.wscale_ok) {
  newtp->rx_opt.snd_wscale = ireq->snd_wscale;
  newtp->rx_opt.rcv_wscale = ireq->rcv_wscale;
 } else {
  newtp->rx_opt.snd_wscale = newtp->rx_opt.rcv_wscale = 0;
  newtp->window_clamp = min(newtp->window_clamp, 65535U);
 }
 newtp->snd_wnd = ntohs(tcp_hdr(skb)->window) << newtp->rx_opt.snd_wscale;
 newtp->max_window = newtp->snd_wnd;

 if (newtp->rx_opt.tstamp_ok) {
  newtp->rx_opt.ts_recent = req->ts_recent;
  newtp->rx_opt.ts_recent_stamp = ktime_get_seconds();
  newtp->tcp_header_len = sizeof(struct tcphdr) + TCPOLEN_TSTAMP_ALIGNED;
 } else {
  newtp->rx_opt.ts_recent_stamp = 0;
  newtp->tcp_header_len = sizeof(struct tcphdr);
 }
 if (req->num_timeout) {
  newtp->undo_marker = treq->snt_isn;
  newtp->retrans_stamp = div_u64(treq->snt_synack,
            USEC_PER_SEC / TCP_TS_HZ);
 }
 newtp->tsoffset = treq->ts_off;





 if (skb->len >= TCP_MSS_DEFAULT + newtp->tcp_header_len)
  newicsk->icsk_ack.last_seg_size = skb->len - newtp->tcp_header_len;
 newtp->rx_opt.mss_clamp = req->mss;
 tcp_ecn_openreq_child(newtp, req);
 newtp->fastopen_req = ((void*)0);
 RCU_INIT_POINTER(newtp->fastopen_rsk, ((void*)0));

 __TCP_INC_STATS(sock_net(sk), TCP_MIB_PASSIVEOPENS);

 return newsk;
}
