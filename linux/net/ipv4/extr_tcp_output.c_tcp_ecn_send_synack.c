
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {int ecn_flags; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int tcp_flags; } ;


 int INET_ECN_xmit (struct sock*) ;
 int TCPHDR_CWR ;
 int TCPHDR_ECE ;
 int TCP_ECN_OK ;
 TYPE_1__* TCP_SKB_CB (struct sk_buff*) ;
 scalar_t__ tcp_bpf_ca_needs_ecn (struct sock*) ;
 scalar_t__ tcp_ca_needs_ecn (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void tcp_ecn_send_synack(struct sock *sk, struct sk_buff *skb)
{
 const struct tcp_sock *tp = tcp_sk(sk);

 TCP_SKB_CB(skb)->tcp_flags &= ~TCPHDR_CWR;
 if (!(tp->ecn_flags & TCP_ECN_OK))
  TCP_SKB_CB(skb)->tcp_flags &= ~TCPHDR_ECE;
 else if (tcp_ca_needs_ecn(sk) ||
   tcp_bpf_ca_needs_ecn(sk))
  INET_ECN_xmit(sk);
}
