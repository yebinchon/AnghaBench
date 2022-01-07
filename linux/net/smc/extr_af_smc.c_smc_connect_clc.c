
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_sock {int dummy; } ;
struct smc_init_info {int dummy; } ;
struct smc_clc_msg_accept_confirm {int dummy; } ;


 int CLC_WAIT_TIME ;
 int SMC_CLC_ACCEPT ;
 int smc_clc_send_proposal (struct smc_sock*,int,struct smc_init_info*) ;
 int smc_clc_wait_msg (struct smc_sock*,struct smc_clc_msg_accept_confirm*,int,int ,int ) ;

__attribute__((used)) static int smc_connect_clc(struct smc_sock *smc, int smc_type,
      struct smc_clc_msg_accept_confirm *aclc,
      struct smc_init_info *ini)
{
 int rc = 0;


 rc = smc_clc_send_proposal(smc, smc_type, ini);
 if (rc)
  return rc;

 return smc_clc_wait_msg(smc, aclc, sizeof(*aclc), SMC_CLC_ACCEPT,
    CLC_WAIT_TIME);
}
