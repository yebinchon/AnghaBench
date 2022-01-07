
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; } ;
struct smc_sock {struct sock sk; } ;


 scalar_t__ SMC_ACTIVE ;
 scalar_t__ SMC_INIT ;
 int sk_refcnt_debug_inc (struct sock*) ;
 int smc_listen_out (struct smc_sock*) ;

__attribute__((used)) static void smc_listen_out_connected(struct smc_sock *new_smc)
{
 struct sock *newsmcsk = &new_smc->sk;

 sk_refcnt_debug_inc(newsmcsk);
 if (newsmcsk->sk_state == SMC_INIT)
  newsmcsk->sk_state = SMC_ACTIVE;

 smc_listen_out(new_smc);
}
