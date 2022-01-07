
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_destruct; int sk_write_space; int sk_state; } ;
struct inet_connection_sock {int icsk_sync_mss; int icsk_syn_retries; int icsk_rto; } ;
struct dccp_sock {int dccps_mss_cache; int dccps_featneg; int dccps_tx_qlen; int dccps_service; int dccps_role; int dccps_rate_last; } ;
typedef int __u8 ;


 int DCCP_CLOSED ;
 int DCCP_ROLE_UNDEFINED ;
 int DCCP_SERVICE_CODE_IS_ABSENT ;
 int DCCP_TIMEOUT_INIT ;
 int INIT_LIST_HEAD (int *) ;
 int dccp_feat_init (struct sock*) ;
 int dccp_init_xmit_timers (struct sock*) ;
 struct dccp_sock* dccp_sk (struct sock*) ;
 int dccp_sk_destruct ;
 int dccp_sync_mss ;
 int dccp_write_space ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int jiffies ;
 scalar_t__ likely (int const) ;
 int sysctl_dccp_request_retries ;
 int sysctl_dccp_tx_qlen ;

int dccp_init_sock(struct sock *sk, const __u8 ctl_sock_initialized)
{
 struct dccp_sock *dp = dccp_sk(sk);
 struct inet_connection_sock *icsk = inet_csk(sk);

 icsk->icsk_rto = DCCP_TIMEOUT_INIT;
 icsk->icsk_syn_retries = sysctl_dccp_request_retries;
 sk->sk_state = DCCP_CLOSED;
 sk->sk_write_space = dccp_write_space;
 sk->sk_destruct = dccp_sk_destruct;
 icsk->icsk_sync_mss = dccp_sync_mss;
 dp->dccps_mss_cache = 536;
 dp->dccps_rate_last = jiffies;
 dp->dccps_role = DCCP_ROLE_UNDEFINED;
 dp->dccps_service = DCCP_SERVICE_CODE_IS_ABSENT;
 dp->dccps_tx_qlen = sysctl_dccp_tx_qlen;

 dccp_init_xmit_timers(sk);

 INIT_LIST_HEAD(&dp->dccps_featneg);

 if (likely(ctl_sock_initialized))
  return dccp_feat_init(sk);
 return 0;
}
