
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sock {scalar_t__ sk_state; int sk_err_soft; } ;
struct iphdr {int dummy; } ;
struct inet_sock {scalar_t__ pmtudisc; } ;
struct dst_entry {int dummy; } ;
struct dccp_sock {int dccps_gsr; } ;
struct TYPE_2__ {scalar_t__ icsk_pmtu_cookie; } ;


 scalar_t__ DCCP_LISTEN ;
 int DCCP_PKT_SYNC ;
 int EMSGSIZE ;
 scalar_t__ IP_PMTUDISC_DONT ;
 int dccp_send_sync (struct sock*,int ,int ) ;
 struct dccp_sock* dccp_sk (struct sock*) ;
 int dccp_sync_mss (struct sock*,scalar_t__) ;
 scalar_t__ dst_mtu (struct dst_entry*) ;
 TYPE_1__* inet_csk (struct sock*) ;
 struct dst_entry* inet_csk_update_pmtu (struct sock*,scalar_t__) ;
 struct inet_sock* inet_sk (struct sock*) ;
 scalar_t__ ip_dont_fragment (struct sock*,struct dst_entry*) ;
 scalar_t__ ip_sk_accept_pmtu (struct sock*) ;

__attribute__((used)) static inline void dccp_do_pmtu_discovery(struct sock *sk,
       const struct iphdr *iph,
       u32 mtu)
{
 struct dst_entry *dst;
 const struct inet_sock *inet = inet_sk(sk);
 const struct dccp_sock *dp = dccp_sk(sk);





 if (sk->sk_state == DCCP_LISTEN)
  return;

 dst = inet_csk_update_pmtu(sk, mtu);
 if (!dst)
  return;




 if (mtu < dst_mtu(dst) && ip_dont_fragment(sk, dst))
  sk->sk_err_soft = EMSGSIZE;

 mtu = dst_mtu(dst);

 if (inet->pmtudisc != IP_PMTUDISC_DONT &&
     ip_sk_accept_pmtu(sk) &&
     inet_csk(sk)->icsk_pmtu_cookie > mtu) {
  dccp_sync_mss(sk, mtu);
  dccp_send_sync(sk, dp->dccps_gsr, DCCP_PKT_SYNC);
 }
}
