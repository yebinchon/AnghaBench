
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct inet_sock {int dummy; } ;



__attribute__((used)) static inline struct inet_sock *inet_sk(const struct sock *sk)
{
 return (struct inet_sock *)sk;
}
