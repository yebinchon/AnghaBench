
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int rcv_wscale; int ts_recent; } ;
struct tcp_sock {int syn_fastopen; int syn_fastopen_exp; TYPE_2__ rx_opt; scalar_t__ tsoffset; TYPE_1__* af_specific; int md5sig_info; struct tcp_fastopen_request* fastopen_req; } ;
struct tcp_out_options {int options; TYPE_4__* fastopen_cookie; int ws; int tsecr; scalar_t__ tsval; int mss; } ;
struct tcp_md5sig_key {int dummy; } ;
struct TYPE_9__ {scalar_t__ len; scalar_t__ exp; } ;
struct tcp_fastopen_request {TYPE_4__ cookie; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_8__ {int sysctl_tcp_window_scaling; int sysctl_tcp_sack; scalar_t__ sysctl_tcp_timestamps; } ;
struct TYPE_10__ {TYPE_3__ ipv4; } ;
struct TYPE_6__ {struct tcp_md5sig_key* (* md5_lookup ) (struct sock*,struct sock*) ;} ;


 unsigned int MAX_TCP_OPTION_SPACE ;
 int OPTION_FAST_OPEN_COOKIE ;
 int OPTION_MD5 ;
 int OPTION_SACK_ADVERTISE ;
 int OPTION_TS ;
 int OPTION_WSCALE ;
 scalar_t__ TCPOLEN_EXP_FASTOPEN_BASE ;
 scalar_t__ TCPOLEN_FASTOPEN_BASE ;
 scalar_t__ TCPOLEN_MD5SIG_ALIGNED ;
 scalar_t__ TCPOLEN_MSS_ALIGNED ;
 scalar_t__ TCPOLEN_SACKPERM_ALIGNED ;
 scalar_t__ TCPOLEN_TSTAMP_ALIGNED ;
 scalar_t__ TCPOLEN_WSCALE_ALIGNED ;
 scalar_t__ likely (int) ;
 scalar_t__ rcu_access_pointer (int ) ;
 int smc_set_option (struct tcp_sock*,struct tcp_out_options*,unsigned int*) ;
 TYPE_5__* sock_net (struct sock*) ;
 scalar_t__ static_branch_unlikely (int *) ;
 struct tcp_md5sig_key* stub1 (struct sock*,struct sock*) ;
 int tcp_advertise_mss (struct sock*) ;
 int tcp_md5_needed ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 scalar_t__ tcp_skb_timestamp (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned int tcp_syn_options(struct sock *sk, struct sk_buff *skb,
    struct tcp_out_options *opts,
    struct tcp_md5sig_key **md5)
{
 struct tcp_sock *tp = tcp_sk(sk);
 unsigned int remaining = MAX_TCP_OPTION_SPACE;
 struct tcp_fastopen_request *fastopen = tp->fastopen_req;

 *md5 = ((void*)0);
 opts->mss = tcp_advertise_mss(sk);
 remaining -= TCPOLEN_MSS_ALIGNED;

 if (likely(sock_net(sk)->ipv4.sysctl_tcp_timestamps && !*md5)) {
  opts->options |= OPTION_TS;
  opts->tsval = tcp_skb_timestamp(skb) + tp->tsoffset;
  opts->tsecr = tp->rx_opt.ts_recent;
  remaining -= TCPOLEN_TSTAMP_ALIGNED;
 }
 if (likely(sock_net(sk)->ipv4.sysctl_tcp_window_scaling)) {
  opts->ws = tp->rx_opt.rcv_wscale;
  opts->options |= OPTION_WSCALE;
  remaining -= TCPOLEN_WSCALE_ALIGNED;
 }
 if (likely(sock_net(sk)->ipv4.sysctl_tcp_sack)) {
  opts->options |= OPTION_SACK_ADVERTISE;
  if (unlikely(!(OPTION_TS & opts->options)))
   remaining -= TCPOLEN_SACKPERM_ALIGNED;
 }

 if (fastopen && fastopen->cookie.len >= 0) {
  u32 need = fastopen->cookie.len;

  need += fastopen->cookie.exp ? TCPOLEN_EXP_FASTOPEN_BASE :
            TCPOLEN_FASTOPEN_BASE;
  need = (need + 3) & ~3U;
  if (remaining >= need) {
   opts->options |= OPTION_FAST_OPEN_COOKIE;
   opts->fastopen_cookie = &fastopen->cookie;
   remaining -= need;
   tp->syn_fastopen = 1;
   tp->syn_fastopen_exp = fastopen->cookie.exp ? 1 : 0;
  }
 }

 smc_set_option(tp, opts, &remaining);

 return MAX_TCP_OPTION_SPACE - remaining;
}
