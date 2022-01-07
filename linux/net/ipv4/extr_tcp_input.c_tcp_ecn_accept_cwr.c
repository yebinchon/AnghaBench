
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {int pending; } ;
struct TYPE_8__ {TYPE_1__ icsk_ack; } ;
struct TYPE_7__ {scalar_t__ cwr; } ;
struct TYPE_6__ {int ecn_flags; } ;


 int ICSK_ACK_NOW ;
 int TCP_ECN_DEMAND_CWR ;
 TYPE_4__* inet_csk (struct sock*) ;
 TYPE_3__* tcp_hdr (struct sk_buff const*) ;
 TYPE_2__* tcp_sk (struct sock*) ;

__attribute__((used)) static void tcp_ecn_accept_cwr(struct sock *sk, const struct sk_buff *skb)
{
 if (tcp_hdr(skb)->cwr) {
  tcp_sk(sk)->ecn_flags &= ~TCP_ECN_DEMAND_CWR;





  inet_csk(sk)->icsk_ack.pending |= ICSK_ACK_NOW;
 }
}
