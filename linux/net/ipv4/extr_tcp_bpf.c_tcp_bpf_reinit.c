
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_psock {int dummy; } ;


 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct sk_psock* sk_psock (struct sock*) ;
 int sock_owned_by_me (struct sock*) ;
 int tcp_bpf_reinit_sk_prot (struct sock*,struct sk_psock*) ;

void tcp_bpf_reinit(struct sock *sk)
{
 struct sk_psock *psock;

 sock_owned_by_me(sk);

 rcu_read_lock();
 psock = sk_psock(sk);
 tcp_bpf_reinit_sk_prot(sk, psock);
 rcu_read_unlock();
}
