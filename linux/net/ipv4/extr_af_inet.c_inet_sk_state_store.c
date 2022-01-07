
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_state; } ;


 int smp_store_release (int *,int) ;
 int trace_inet_sock_set_state (struct sock*,int ,int) ;

void inet_sk_state_store(struct sock *sk, int newstate)
{
 trace_inet_sock_set_state(sk, sk->sk_state, newstate);
 smp_store_release(&sk->sk_state, newstate);
}
