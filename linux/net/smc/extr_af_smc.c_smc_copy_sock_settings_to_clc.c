
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smc_sock {int sk; TYPE_1__* clcsock; } ;
struct TYPE_2__ {int sk; } ;


 int SK_FLAGS_SMC_TO_CLC ;
 int smc_copy_sock_settings (int ,int *,int ) ;

__attribute__((used)) static void smc_copy_sock_settings_to_clc(struct smc_sock *smc)
{
 smc_copy_sock_settings(smc->clcsock->sk, &smc->sk, SK_FLAGS_SMC_TO_CLC);
}
