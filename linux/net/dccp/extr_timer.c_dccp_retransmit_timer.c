
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct inet_connection_sock {scalar_t__ icsk_retransmits; int icsk_rto; int icsk_backoff; } ;


 int DCCP_MIB_TIMEOUTS ;
 int DCCP_RTO_MAX ;
 int ICSK_TIME_RETRANS ;
 int TCP_RESOURCE_PROBE_INTERVAL ;
 int __DCCP_INC_STATS (int ) ;
 int __sk_dst_reset (struct sock*) ;
 scalar_t__ dccp_retransmit_skb (struct sock*) ;
 scalar_t__ dccp_write_timeout (struct sock*) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int inet_csk_reset_xmit_timer (struct sock*,int ,int,int ) ;
 int min (int,int ) ;
 int sysctl_dccp_retries1 ;

__attribute__((used)) static void dccp_retransmit_timer(struct sock *sk)
{
 struct inet_connection_sock *icsk = inet_csk(sk);





 if (dccp_write_timeout(sk))
  return;





 if (icsk->icsk_retransmits == 0)
  __DCCP_INC_STATS(DCCP_MIB_TIMEOUTS);

 if (dccp_retransmit_skb(sk) != 0) {




  if (--icsk->icsk_retransmits == 0)
   icsk->icsk_retransmits = 1;
  inet_csk_reset_xmit_timer(sk, ICSK_TIME_RETRANS,
       min(icsk->icsk_rto,
           TCP_RESOURCE_PROBE_INTERVAL),
       DCCP_RTO_MAX);
  return;
 }

 icsk->icsk_backoff++;

 icsk->icsk_rto = min(icsk->icsk_rto << 1, DCCP_RTO_MAX);
 inet_csk_reset_xmit_timer(sk, ICSK_TIME_RETRANS, icsk->icsk_rto,
      DCCP_RTO_MAX);
 if (icsk->icsk_retransmits > sysctl_dccp_retries1)
  __sk_dst_reset(sk);
}
