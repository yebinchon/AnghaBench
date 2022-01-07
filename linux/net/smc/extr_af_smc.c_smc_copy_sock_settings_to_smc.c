
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smc_sock {TYPE_1__* clcsock; int sk; } ;
struct TYPE_2__ {int sk; } ;


 int SK_FLAGS_CLC_TO_SMC ;
 int smc_copy_sock_settings (int *,int ,int ) ;

__attribute__((used)) static void smc_copy_sock_settings_to_smc(struct smc_sock *smc)
{
 smc_copy_sock_settings(&smc->sk, smc->clcsock->sk, SK_FLAGS_CLC_TO_SMC);
}
