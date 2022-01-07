
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_rcu; int sk_reuseport_cb; } ;


 int SOCK_RCU_FREE ;
 int __sk_destruct (int *) ;
 int call_rcu (int *,int (*) (int *)) ;
 scalar_t__ rcu_access_pointer (int ) ;
 int reuseport_detach_sock (struct sock*) ;
 int sock_flag (struct sock*,int ) ;

void sk_destruct(struct sock *sk)
{
 bool use_call_rcu = sock_flag(sk, SOCK_RCU_FREE);

 if (rcu_access_pointer(sk->sk_reuseport_cb)) {
  reuseport_detach_sock(sk);
  use_call_rcu = 1;
 }

 if (use_call_rcu)
  call_rcu(&sk->sk_rcu, __sk_destruct);
 else
  __sk_destruct(&sk->sk_rcu);
}
