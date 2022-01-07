
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct sock {int dummy; } ;


 int sock_diag_save_cookie (struct sock*,int *) ;

__attribute__((used)) static u64 __tipc_diag_gen_cookie(struct sock *sk)
{
 u32 res[2];

 sock_diag_save_cookie(sk, res);
 return *((u64 *)res);
}
