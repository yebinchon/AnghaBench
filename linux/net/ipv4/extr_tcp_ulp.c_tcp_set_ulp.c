
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_ulp_ops {int dummy; } ;
struct sock {int dummy; } ;


 int ENOENT ;
 int __tcp_set_ulp (struct sock*,struct tcp_ulp_ops const*) ;
 struct tcp_ulp_ops* __tcp_ulp_find_autoload (char const*) ;
 int sock_owned_by_me (struct sock*) ;

int tcp_set_ulp(struct sock *sk, const char *name)
{
 const struct tcp_ulp_ops *ulp_ops;

 sock_owned_by_me(sk);

 ulp_ops = __tcp_ulp_find_autoload(name);
 if (!ulp_ops)
  return -ENOENT;

 return __tcp_set_ulp(sk, ulp_ops);
}
