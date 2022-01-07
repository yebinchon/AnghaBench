
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_state; } ;


 int trace_inet_sock_set_state (struct sock*,int,int) ;

void inet_sk_set_state(struct sock *sk, int state)
{
 trace_inet_sock_set_state(sk, sk->sk_state, state);
 sk->sk_state = state;
}
