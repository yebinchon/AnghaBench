
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct sock {int dummy; } ;
typedef scalar_t__ __u32 ;


 int sock_gen_cookie (struct sock*) ;

void sock_diag_save_cookie(struct sock *sk, __u32 *cookie)
{
 u64 res = sock_gen_cookie(sk);

 cookie[0] = (u32)res;
 cookie[1] = (u32)(res >> 32);
}
