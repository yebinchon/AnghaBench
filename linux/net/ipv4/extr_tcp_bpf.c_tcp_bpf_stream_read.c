
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_psock {int ingress_msg; } ;


 scalar_t__ likely (struct sk_psock*) ;
 int list_empty (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct sk_psock* sk_psock (struct sock const*) ;

__attribute__((used)) static bool tcp_bpf_stream_read(const struct sock *sk)
{
 struct sk_psock *psock;
 bool empty = 1;

 rcu_read_lock();
 psock = sk_psock(sk);
 if (likely(psock))
  empty = list_empty(&psock->ingress_msg);
 rcu_read_unlock();
 return !empty;
}
