
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tcphdr {scalar_t__ fin; int window; scalar_t__ syn; scalar_t__ rst; scalar_t__ ack; } ;
struct TYPE_6__ {int snd_wscale; int tstamp_ok; scalar_t__ saw_tstamp; } ;
struct tcp_sock {int snd_wnd; int rcv_nxt; int write_seq; int snd_una; int syn_fastopen; int linger2; int lsndtime; int advmss; TYPE_2__ rx_opt; int copied_seq; int retrans_stamp; int srtt_us; int delivered; int fastopen_rsk; } ;
struct sock {int sk_state; int sk_shutdown; int (* sk_state_change ) (struct sock*) ;int sk_socket; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int dummy; } ;
struct inet_connection_sock {TYPE_3__* icsk_ca_ops; TYPE_1__* icsk_af_ops; } ;
struct TYPE_8__ {scalar_t__ end_seq; scalar_t__ seq; int ack_seq; } ;
struct TYPE_7__ {int cong_control; } ;
struct TYPE_5__ {int (* conn_request ) (struct sock*,struct sk_buff*) ;} ;


 int BPF_SOCK_OPS_PASSIVE_ESTABLISHED_CB ;
 int FLAG_NO_CHALLENGE_ACK ;
 int FLAG_SLOWPATH ;
 int FLAG_UPDATE_TS_RECENT ;
 int LINUX_MIB_TCPABORTONDATA ;
 int NET_INC_STATS (int ,int ) ;
 int POLL_OUT ;
 int RCV_SHUTDOWN ;
 int SEND_SHUTDOWN ;
 int SOCK_DEAD ;
 int SOCK_WAKE_IO ;
 int TCPOLEN_TSTAMP_ALIGNED ;
 TYPE_4__* TCP_SKB_CB (struct sk_buff*) ;


 int TCP_TIMEWAIT_LEN ;
 int TCP_TIME_WAIT ;
 int WARN_ON_ONCE (int) ;
 int WRITE_ONCE (int ,int ) ;
 int __kfree_skb (struct sk_buff*) ;
 int after (scalar_t__,int ) ;
 int before (scalar_t__,int ) ;
 int consume_skb (struct sk_buff*) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int inet_csk_reset_keepalive_timer (struct sock*,int) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int lockdep_sock_is_held (struct sock*) ;
 int ntohs (int ) ;
 struct request_sock* rcu_dereference_protected (int ,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sk_dst_confirm (struct sock*) ;
 int sk_wake_async (struct sock*,int ,int ) ;
 int smp_mb () ;
 int sock_flag (struct sock*,int ) ;
 int sock_net (struct sock*) ;
 int sock_owned_by_user (struct sock*) ;
 int stub1 (struct sock*,struct sk_buff*) ;
 int stub2 (struct sock*) ;
 int stub3 (struct sock*) ;
 scalar_t__ tcp_ack (struct sock*,struct sk_buff*,int) ;
 int tcp_ack_snd_check (struct sock*) ;
 int tcp_check_req (struct sock*,struct sk_buff*,struct request_sock*,int,int*) ;
 int tcp_data_queue (struct sock*,struct sk_buff*) ;
 int tcp_data_snd_check (struct sock*) ;
 int tcp_done (struct sock*) ;
 int tcp_drop (struct sock*,struct sk_buff*) ;
 int tcp_fast_path_on (struct tcp_sock*) ;
 int tcp_fastopen_active_disable (struct sock*) ;
 int tcp_fin_time (struct sock*) ;
 struct tcphdr* tcp_hdr (struct sk_buff*) ;
 int tcp_init_transfer (struct sock*,int ) ;
 int tcp_init_wl (struct tcp_sock*,scalar_t__) ;
 int tcp_initialize_rcv_mss (struct sock*) ;
 int tcp_jiffies32 ;
 int tcp_mstamp_refresh (struct tcp_sock*) ;
 int tcp_rcv_synrecv_state_fastopen (struct sock*) ;
 int tcp_rcv_synsent_state_process (struct sock*,struct sk_buff*,struct tcphdr const*) ;
 int tcp_reset (struct sock*) ;
 int tcp_send_challenge_ack (struct sock*,struct sk_buff*) ;
 int tcp_set_state (struct sock*,int) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_synack_rtt_meas (struct sock*,struct request_sock*) ;
 int tcp_time_wait (struct sock*,int,int) ;
 int tcp_try_undo_spurious_syn (struct sock*) ;
 int tcp_update_metrics (struct sock*) ;
 int tcp_update_pacing_rate (struct sock*) ;
 int tcp_urg (struct sock*,struct sk_buff*,struct tcphdr const*) ;
 int tcp_validate_incoming (struct sock*,struct sk_buff*,struct tcphdr const*,int ) ;

int tcp_rcv_state_process(struct sock *sk, struct sk_buff *skb)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct inet_connection_sock *icsk = inet_csk(sk);
 const struct tcphdr *th = tcp_hdr(skb);
 struct request_sock *req;
 int queued = 0;
 bool acceptable;

 switch (sk->sk_state) {
 case 137:
  goto discard;

 case 130:
  if (th->ack)
   return 1;

  if (th->rst)
   goto discard;

  if (th->syn) {
   if (th->fin)
    goto discard;



   rcu_read_lock();
   local_bh_disable();
   acceptable = icsk->icsk_af_ops->conn_request(sk, skb) >= 0;
   local_bh_enable();
   rcu_read_unlock();

   if (!acceptable)
    return 1;
   consume_skb(skb);
   return 0;
  }
  goto discard;

 case 128:
  tp->rx_opt.saw_tstamp = 0;
  tcp_mstamp_refresh(tp);
  queued = tcp_rcv_synsent_state_process(sk, skb, th);
  if (queued >= 0)
   return queued;


  tcp_urg(sk, skb, th);
  __kfree_skb(skb);
  tcp_data_snd_check(sk);
  return 0;
 }

 tcp_mstamp_refresh(tp);
 tp->rx_opt.saw_tstamp = 0;
 req = rcu_dereference_protected(tp->fastopen_rsk,
     lockdep_sock_is_held(sk));
 if (req) {
  bool req_stolen;

  WARN_ON_ONCE(sk->sk_state != 129 &&
      sk->sk_state != 133);

  if (!tcp_check_req(sk, skb, req, 1, &req_stolen))
   goto discard;
 }

 if (!th->ack && !th->rst && !th->syn)
  goto discard;

 if (!tcp_validate_incoming(sk, skb, th, 0))
  return 0;


 acceptable = tcp_ack(sk, skb, FLAG_SLOWPATH |
          FLAG_UPDATE_TS_RECENT |
          FLAG_NO_CHALLENGE_ACK) > 0;

 if (!acceptable) {
  if (sk->sk_state == 129)
   return 1;
  tcp_send_challenge_ack(sk, skb);
  goto discard;
 }
 switch (sk->sk_state) {
 case 129:
  tp->delivered++;
  if (!tp->srtt_us)
   tcp_synack_rtt_meas(sk, req);

  if (req) {
   tcp_rcv_synrecv_state_fastopen(sk);
  } else {
   tcp_try_undo_spurious_syn(sk);
   tp->retrans_stamp = 0;
   tcp_init_transfer(sk, BPF_SOCK_OPS_PASSIVE_ESTABLISHED_CB);
   WRITE_ONCE(tp->copied_seq, tp->rcv_nxt);
  }
  smp_mb();
  tcp_set_state(sk, 134);
  sk->sk_state_change(sk);





  if (sk->sk_socket)
   sk_wake_async(sk, SOCK_WAKE_IO, POLL_OUT);

  tp->snd_una = TCP_SKB_CB(skb)->ack_seq;
  tp->snd_wnd = ntohs(th->window) << tp->rx_opt.snd_wscale;
  tcp_init_wl(tp, TCP_SKB_CB(skb)->seq);

  if (tp->rx_opt.tstamp_ok)
   tp->advmss -= TCPOLEN_TSTAMP_ALIGNED;

  if (!inet_csk(sk)->icsk_ca_ops->cong_control)
   tcp_update_pacing_rate(sk);


  tp->lsndtime = tcp_jiffies32;

  tcp_initialize_rcv_mss(sk);
  tcp_fast_path_on(tp);
  break;

 case 133: {
  int tmo;

  if (req)
   tcp_rcv_synrecv_state_fastopen(sk);

  if (tp->snd_una != tp->write_seq)
   break;

  tcp_set_state(sk, 132);
  sk->sk_shutdown |= SEND_SHUTDOWN;

  sk_dst_confirm(sk);

  if (!sock_flag(sk, SOCK_DEAD)) {

   sk->sk_state_change(sk);
   break;
  }

  if (tp->linger2 < 0) {
   tcp_done(sk);
   NET_INC_STATS(sock_net(sk), LINUX_MIB_TCPABORTONDATA);
   return 1;
  }
  if (TCP_SKB_CB(skb)->end_seq != TCP_SKB_CB(skb)->seq &&
      after(TCP_SKB_CB(skb)->end_seq - th->fin, tp->rcv_nxt)) {

   if (tp->syn_fastopen && th->fin)
    tcp_fastopen_active_disable(sk);
   tcp_done(sk);
   NET_INC_STATS(sock_net(sk), LINUX_MIB_TCPABORTONDATA);
   return 1;
  }

  tmo = tcp_fin_time(sk);
  if (tmo > TCP_TIMEWAIT_LEN) {
   inet_csk_reset_keepalive_timer(sk, tmo - TCP_TIMEWAIT_LEN);
  } else if (th->fin || sock_owned_by_user(sk)) {






   inet_csk_reset_keepalive_timer(sk, tmo);
  } else {
   tcp_time_wait(sk, 132, tmo);
   goto discard;
  }
  break;
 }

 case 135:
  if (tp->snd_una == tp->write_seq) {
   tcp_time_wait(sk, TCP_TIME_WAIT, 0);
   goto discard;
  }
  break;

 case 131:
  if (tp->snd_una == tp->write_seq) {
   tcp_update_metrics(sk);
   tcp_done(sk);
   goto discard;
  }
  break;
 }


 tcp_urg(sk, skb, th);


 switch (sk->sk_state) {
 case 136:
 case 135:
 case 131:
  if (!before(TCP_SKB_CB(skb)->seq, tp->rcv_nxt))
   break;

 case 133:
 case 132:




  if (sk->sk_shutdown & RCV_SHUTDOWN) {
   if (TCP_SKB_CB(skb)->end_seq != TCP_SKB_CB(skb)->seq &&
       after(TCP_SKB_CB(skb)->end_seq - th->fin, tp->rcv_nxt)) {
    NET_INC_STATS(sock_net(sk), LINUX_MIB_TCPABORTONDATA);
    tcp_reset(sk);
    return 1;
   }
  }

 case 134:
  tcp_data_queue(sk, skb);
  queued = 1;
  break;
 }


 if (sk->sk_state != 137) {
  tcp_data_snd_check(sk);
  tcp_ack_snd_check(sk);
 }

 if (!queued) {
discard:
  tcp_drop(sk, skb);
 }
 return 0;
}
