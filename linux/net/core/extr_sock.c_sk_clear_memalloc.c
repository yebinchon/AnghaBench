
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_allocation; } ;


 int SOCK_MEMALLOC ;
 int __GFP_MEMALLOC ;
 int memalloc_socks_key ;
 int sk_mem_reclaim (struct sock*) ;
 int sock_reset_flag (struct sock*,int ) ;
 int static_branch_dec (int *) ;

void sk_clear_memalloc(struct sock *sk)
{
 sock_reset_flag(sk, SOCK_MEMALLOC);
 sk->sk_allocation &= ~__GFP_MEMALLOC;
 static_branch_dec(&memalloc_socks_key);
 sk_mem_reclaim(sk);
}
