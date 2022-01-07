
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int ecn_flags; } ;


 int TCP_ECN_OK ;
 int __tcp_ecn_check_ce (struct sock*,struct sk_buff const*) ;
 TYPE_1__* tcp_sk (struct sock*) ;

__attribute__((used)) static void tcp_ecn_check_ce(struct sock *sk, const struct sk_buff *skb)
{
 if (tcp_sk(sk)->ecn_flags & TCP_ECN_OK)
  __tcp_ecn_check_ce(sk, skb);
}
