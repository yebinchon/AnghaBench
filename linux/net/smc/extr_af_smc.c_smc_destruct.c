
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; } ;


 scalar_t__ SMC_CLOSED ;
 int SOCK_DEAD ;
 int sk_refcnt_debug_dec (struct sock*) ;
 int sock_flag (struct sock*,int ) ;

__attribute__((used)) static void smc_destruct(struct sock *sk)
{
 if (sk->sk_state != SMC_CLOSED)
  return;
 if (!sock_flag(sk, SOCK_DEAD))
  return;

 sk_refcnt_debug_dec(sk);
}
