
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct l2tp_ip6_sock {int dummy; } ;



__attribute__((used)) static inline struct l2tp_ip6_sock *l2tp_ip6_sk(const struct sock *sk)
{
 return (struct l2tp_ip6_sock *)sk;
}
