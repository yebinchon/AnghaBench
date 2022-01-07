
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sk_state; } ;
struct smc_sock {TYPE_1__ sk; } ;


 int SMC_CLC_DECL_PEERDECL ;
 scalar_t__ SMC_INIT ;
 int smc_clc_send_decline (struct smc_sock*,int) ;
 int smc_connect_fallback (struct smc_sock*,int) ;
 int sock_put (TYPE_1__*) ;

__attribute__((used)) static int smc_connect_decline_fallback(struct smc_sock *smc, int reason_code)
{
 int rc;

 if (reason_code < 0) {
  if (smc->sk.sk_state == SMC_INIT)
   sock_put(&smc->sk);
  return reason_code;
 }
 if (reason_code != SMC_CLC_DECL_PEERDECL) {
  rc = smc_clc_send_decline(smc, reason_code);
  if (rc < 0) {
   if (smc->sk.sk_state == SMC_INIT)
    sock_put(&smc->sk);
   return rc;
  }
 }
 return smc_connect_fallback(smc, reason_code);
}
