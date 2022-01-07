
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tcp_out_options {unsigned int mss; struct tcp_fastopen_cookie* fastopen_cookie; int options; int tsecr; scalar_t__ tsval; int ws; } ;
struct tcp_md5sig_key {int dummy; } ;
struct tcp_fastopen_cookie {scalar_t__ len; scalar_t__ exp; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int ts_recent; } ;
struct inet_request_sock {int tstamp_ok; int sack_ok; int wscale_ok; int rcv_wscale; } ;
struct TYPE_2__ {scalar_t__ ts_off; } ;


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
 struct inet_request_sock* inet_rsk (struct request_sock*) ;
 scalar_t__ likely (int) ;
 int smc_set_option_cond (int ,struct inet_request_sock*,struct tcp_out_options*,unsigned int*) ;
 TYPE_1__* tcp_rsk (struct request_sock*) ;
 int tcp_sk (struct sock const*) ;
 scalar_t__ tcp_skb_timestamp (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned int tcp_synack_options(const struct sock *sk,
           struct request_sock *req,
           unsigned int mss, struct sk_buff *skb,
           struct tcp_out_options *opts,
           const struct tcp_md5sig_key *md5,
           struct tcp_fastopen_cookie *foc)
{
 struct inet_request_sock *ireq = inet_rsk(req);
 unsigned int remaining = MAX_TCP_OPTION_SPACE;
 opts->mss = mss;
 remaining -= TCPOLEN_MSS_ALIGNED;

 if (likely(ireq->wscale_ok)) {
  opts->ws = ireq->rcv_wscale;
  opts->options |= OPTION_WSCALE;
  remaining -= TCPOLEN_WSCALE_ALIGNED;
 }
 if (likely(ireq->tstamp_ok)) {
  opts->options |= OPTION_TS;
  opts->tsval = tcp_skb_timestamp(skb) + tcp_rsk(req)->ts_off;
  opts->tsecr = req->ts_recent;
  remaining -= TCPOLEN_TSTAMP_ALIGNED;
 }
 if (likely(ireq->sack_ok)) {
  opts->options |= OPTION_SACK_ADVERTISE;
  if (unlikely(!ireq->tstamp_ok))
   remaining -= TCPOLEN_SACKPERM_ALIGNED;
 }
 if (foc != ((void*)0) && foc->len >= 0) {
  u32 need = foc->len;

  need += foc->exp ? TCPOLEN_EXP_FASTOPEN_BASE :
       TCPOLEN_FASTOPEN_BASE;
  need = (need + 3) & ~3U;
  if (remaining >= need) {
   opts->options |= OPTION_FAST_OPEN_COOKIE;
   opts->fastopen_cookie = foc;
   remaining -= need;
  }
 }

 smc_set_option_cond(tcp_sk(sk), ireq, opts, &remaining);

 return MAX_TCP_OPTION_SPACE - remaining;
}
