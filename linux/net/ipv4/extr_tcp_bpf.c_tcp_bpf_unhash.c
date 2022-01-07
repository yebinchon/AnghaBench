
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {TYPE_1__* sk_prot; } ;
struct sk_psock {void (* saved_unhash ) (struct sock*) ;} ;
struct TYPE_2__ {int (* unhash ) (struct sock*) ;} ;


 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct sk_psock* sk_psock (struct sock*) ;
 int stub1 (struct sock*) ;
 int tcp_bpf_remove (struct sock*,struct sk_psock*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void tcp_bpf_unhash(struct sock *sk)
{
 void (*saved_unhash)(struct sock *sk);
 struct sk_psock *psock;

 rcu_read_lock();
 psock = sk_psock(sk);
 if (unlikely(!psock)) {
  rcu_read_unlock();
  if (sk->sk_prot->unhash)
   sk->sk_prot->unhash(sk);
  return;
 }

 saved_unhash = psock->saved_unhash;
 tcp_bpf_remove(sk, psock);
 rcu_read_unlock();
 saved_unhash(sk);
}
