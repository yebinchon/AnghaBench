
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_prot; } ;
struct sk_psock {scalar_t__ sk_proto; } ;
struct proto {int dummy; } ;


 int EINVAL ;
 struct proto* READ_ONCE (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct sk_psock* sk_psock (struct sock*) ;
 int sock_owned_by_me (struct sock*) ;
 scalar_t__ tcp_bpf_assert_proto_ops (struct proto*) ;
 int tcp_bpf_check_v6_needs_rebuild (struct sock*,struct proto*) ;
 int tcp_bpf_update_sk_prot (struct sock*,struct sk_psock*) ;
 scalar_t__ unlikely (int) ;

int tcp_bpf_init(struct sock *sk)
{
 struct proto *ops = READ_ONCE(sk->sk_prot);
 struct sk_psock *psock;

 sock_owned_by_me(sk);

 rcu_read_lock();
 psock = sk_psock(sk);
 if (unlikely(!psock || psock->sk_proto ||
       tcp_bpf_assert_proto_ops(ops))) {
  rcu_read_unlock();
  return -EINVAL;
 }
 tcp_bpf_check_v6_needs_rebuild(sk, ops);
 tcp_bpf_update_sk_prot(sk, psock);
 rcu_read_unlock();
 return 0;
}
