
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_filter; } ;
struct sk_filter {int dummy; } ;


 int ENOENT ;
 int EPERM ;
 int RCU_INIT_POINTER (int ,int *) ;
 int SOCK_FILTER_LOCKED ;
 int lockdep_sock_is_held (struct sock*) ;
 struct sk_filter* rcu_dereference_protected (int ,int ) ;
 int sk_filter_uncharge (struct sock*,struct sk_filter*) ;
 scalar_t__ sock_flag (struct sock*,int ) ;

int sk_detach_filter(struct sock *sk)
{
 int ret = -ENOENT;
 struct sk_filter *filter;

 if (sock_flag(sk, SOCK_FILTER_LOCKED))
  return -EPERM;

 filter = rcu_dereference_protected(sk->sk_filter,
        lockdep_sock_is_held(sk));
 if (filter) {
  RCU_INIT_POINTER(sk->sk_filter, ((void*)0));
  sk_filter_uncharge(sk, filter);
  ret = 0;
 }

 return ret;
}
