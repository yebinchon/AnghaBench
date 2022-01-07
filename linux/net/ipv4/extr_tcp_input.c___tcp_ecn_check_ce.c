
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {int ecn_flags; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int ip_dsfield; } ;


 int CA_EVENT_ECN_IS_CE ;
 int CA_EVENT_ECN_NO_CE ;

 int INET_ECN_MASK ;

 int TCP_ECN_DEMAND_CWR ;
 int TCP_ECN_SEEN ;
 TYPE_1__* TCP_SKB_CB (struct sk_buff const*) ;
 int tcp_ca_event (struct sock*,int ) ;
 int tcp_ca_needs_ecn (struct sock*) ;
 int tcp_enter_quickack_mode (struct sock*,int) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void __tcp_ecn_check_ce(struct sock *sk, const struct sk_buff *skb)
{
 struct tcp_sock *tp = tcp_sk(sk);

 switch (TCP_SKB_CB(skb)->ip_dsfield & INET_ECN_MASK) {
 case 128:




  if (tp->ecn_flags & TCP_ECN_SEEN)
   tcp_enter_quickack_mode(sk, 2);
  break;
 case 129:
  if (tcp_ca_needs_ecn(sk))
   tcp_ca_event(sk, CA_EVENT_ECN_IS_CE);

  if (!(tp->ecn_flags & TCP_ECN_DEMAND_CWR)) {

   tcp_enter_quickack_mode(sk, 2);
   tp->ecn_flags |= TCP_ECN_DEMAND_CWR;
  }
  tp->ecn_flags |= TCP_ECN_SEEN;
  break;
 default:
  if (tcp_ca_needs_ecn(sk))
   tcp_ca_event(sk, CA_EVENT_ECN_NO_CE);
  tp->ecn_flags |= TCP_ECN_SEEN;
  break;
 }
}
