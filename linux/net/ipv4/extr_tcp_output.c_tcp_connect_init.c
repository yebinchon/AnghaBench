
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct tcphdr {int dummy; } ;
struct TYPE_8__ {int rcv_wscale; scalar_t__ ts_recent_stamp; scalar_t__ user_mss; scalar_t__ mss_clamp; } ;
struct tcp_sock {int tcp_header_len; scalar_t__ window_clamp; scalar_t__ rcv_nxt; int copied_seq; scalar_t__ rcv_wup; int rcv_tstamp; int repair; scalar_t__ write_seq; int snd_nxt; scalar_t__ snd_up; scalar_t__ snd_sml; scalar_t__ snd_una; scalar_t__ snd_wnd; int rcv_wnd; int rcv_ssthresh; TYPE_3__ rx_opt; scalar_t__ advmss; scalar_t__ max_window; TYPE_1__* af_specific; } ;
struct sock {int sk_userlocks; scalar_t__ sk_err; } ;
struct dst_entry {int dummy; } ;
typedef int __u8 ;
struct TYPE_10__ {scalar_t__ icsk_retransmits; int icsk_rto; } ;
struct TYPE_7__ {int sysctl_tcp_window_scaling; scalar_t__ sysctl_tcp_timestamps; } ;
struct TYPE_9__ {TYPE_2__ ipv4; } ;
struct TYPE_6__ {scalar_t__ (* md5_lookup ) (struct sock*,struct sock*) ;} ;


 int RTAX_INITRWND ;
 int RTAX_WINDOW ;
 int SOCK_DONE ;
 int SOCK_RCVBUF_LOCK ;
 scalar_t__ TCPOLEN_MD5SIG_ALIGNED ;
 scalar_t__ TCPOLEN_TSTAMP_ALIGNED ;
 int WRITE_ONCE (int ,scalar_t__) ;
 struct dst_entry* __sk_dst_get (struct sock*) ;
 scalar_t__ dst_metric (struct dst_entry const*,int ) ;
 int dst_metric_advmss (struct dst_entry const*) ;
 int dst_mtu (struct dst_entry const*) ;
 TYPE_5__* inet_csk (struct sock*) ;
 scalar_t__ likely (int) ;
 TYPE_4__* sock_net (struct sock*) ;
 int sock_reset_flag (struct sock*,int ) ;
 scalar_t__ stub1 (struct sock*,struct sock*) ;
 int tcp_ca_dst_init (struct sock*,struct dst_entry const*) ;
 int tcp_clear_retrans (struct tcp_sock*) ;
 scalar_t__ tcp_full_space (struct sock*) ;
 int tcp_init_wl (struct tcp_sock*,int ) ;
 int tcp_initialize_rcv_mss (struct sock*) ;
 int tcp_jiffies32 ;
 scalar_t__ tcp_mss_clamp (struct tcp_sock*,int ) ;
 int tcp_mtup_init (struct sock*) ;
 scalar_t__ tcp_rwnd_init_bpf (struct sock*) ;
 int tcp_select_initial_window (struct sock*,scalar_t__,scalar_t__,int *,scalar_t__*,int ,int *,scalar_t__) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_sync_mss (struct sock*,int ) ;
 int tcp_timeout_init (struct sock*) ;
 int tcp_write_queue_purge (struct sock*) ;

__attribute__((used)) static void tcp_connect_init(struct sock *sk)
{
 const struct dst_entry *dst = __sk_dst_get(sk);
 struct tcp_sock *tp = tcp_sk(sk);
 __u8 rcv_wscale;
 u32 rcv_wnd;




 tp->tcp_header_len = sizeof(struct tcphdr);
 if (sock_net(sk)->ipv4.sysctl_tcp_timestamps)
  tp->tcp_header_len += TCPOLEN_TSTAMP_ALIGNED;







 if (tp->rx_opt.user_mss)
  tp->rx_opt.mss_clamp = tp->rx_opt.user_mss;
 tp->max_window = 0;
 tcp_mtup_init(sk);
 tcp_sync_mss(sk, dst_mtu(dst));

 tcp_ca_dst_init(sk, dst);

 if (!tp->window_clamp)
  tp->window_clamp = dst_metric(dst, RTAX_WINDOW);
 tp->advmss = tcp_mss_clamp(tp, dst_metric_advmss(dst));

 tcp_initialize_rcv_mss(sk);


 if (sk->sk_userlocks & SOCK_RCVBUF_LOCK &&
     (tp->window_clamp > tcp_full_space(sk) || tp->window_clamp == 0))
  tp->window_clamp = tcp_full_space(sk);

 rcv_wnd = tcp_rwnd_init_bpf(sk);
 if (rcv_wnd == 0)
  rcv_wnd = dst_metric(dst, RTAX_INITRWND);

 tcp_select_initial_window(sk, tcp_full_space(sk),
      tp->advmss - (tp->rx_opt.ts_recent_stamp ? tp->tcp_header_len - sizeof(struct tcphdr) : 0),
      &tp->rcv_wnd,
      &tp->window_clamp,
      sock_net(sk)->ipv4.sysctl_tcp_window_scaling,
      &rcv_wscale,
      rcv_wnd);

 tp->rx_opt.rcv_wscale = rcv_wscale;
 tp->rcv_ssthresh = tp->rcv_wnd;

 sk->sk_err = 0;
 sock_reset_flag(sk, SOCK_DONE);
 tp->snd_wnd = 0;
 tcp_init_wl(tp, 0);
 tcp_write_queue_purge(sk);
 tp->snd_una = tp->write_seq;
 tp->snd_sml = tp->write_seq;
 tp->snd_up = tp->write_seq;
 WRITE_ONCE(tp->snd_nxt, tp->write_seq);

 if (likely(!tp->repair))
  tp->rcv_nxt = 0;
 else
  tp->rcv_tstamp = tcp_jiffies32;
 tp->rcv_wup = tp->rcv_nxt;
 WRITE_ONCE(tp->copied_seq, tp->rcv_nxt);

 inet_csk(sk)->icsk_rto = tcp_timeout_init(sk);
 inet_csk(sk)->icsk_retransmits = 0;
 tcp_clear_retrans(tp);
}
