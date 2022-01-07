
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int dccp_qpolicy_drop (struct sock*,int ) ;
 int qpolicy_prio_worst_skb (struct sock*) ;
 scalar_t__ qpolicy_simple_full (struct sock*) ;

__attribute__((used)) static bool qpolicy_prio_full(struct sock *sk)
{
 if (qpolicy_simple_full(sk))
  dccp_qpolicy_drop(sk, qpolicy_prio_worst_skb(sk));
 return 0;
}
