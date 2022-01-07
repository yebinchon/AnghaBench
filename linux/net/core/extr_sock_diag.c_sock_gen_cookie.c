
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct sock {int sk_cookie; } ;


 int atomic64_cmpxchg (int *,int ,scalar_t__) ;
 scalar_t__ atomic64_inc_return (int *) ;
 scalar_t__ atomic64_read (int *) ;
 int cookie_gen ;

u64 sock_gen_cookie(struct sock *sk)
{
 while (1) {
  u64 res = atomic64_read(&sk->sk_cookie);

  if (res)
   return res;
  res = atomic64_inc_return(&cookie_gen);
  atomic64_cmpxchg(&sk->sk_cookie, 0, res);
 }
}
