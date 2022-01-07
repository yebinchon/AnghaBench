
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_allocation; } ;


 int SOCK_MEMALLOC ;
 int __GFP_MEMALLOC ;
 int memalloc_socks_key ;
 int sock_set_flag (struct sock*,int ) ;
 int static_branch_inc (int *) ;

void sk_set_memalloc(struct sock *sk)
{
 sock_set_flag(sk, SOCK_MEMALLOC);
 sk->sk_allocation |= __GFP_MEMALLOC;
 static_branch_inc(&memalloc_socks_key);
}
