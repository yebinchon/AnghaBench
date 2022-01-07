
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sk_state; } ;
struct smc_sock {int fallback_rsn; TYPE_1__ sk; scalar_t__ connect_nonblock; } ;


 scalar_t__ SMC_ACTIVE ;
 scalar_t__ SMC_INIT ;
 int smc_copy_sock_settings_to_clc (struct smc_sock*) ;
 int smc_switch_to_fallback (struct smc_sock*) ;

__attribute__((used)) static int smc_connect_fallback(struct smc_sock *smc, int reason_code)
{
 smc_switch_to_fallback(smc);
 smc->fallback_rsn = reason_code;
 smc_copy_sock_settings_to_clc(smc);
 smc->connect_nonblock = 0;
 if (smc->sk.sk_state == SMC_INIT)
  smc->sk.sk_state = SMC_ACTIVE;
 return 0;
}
