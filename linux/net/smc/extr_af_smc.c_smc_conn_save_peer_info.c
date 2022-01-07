
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* lgr; } ;
struct smc_sock {TYPE_2__ conn; } ;
struct smc_clc_msg_accept_confirm {int dummy; } ;
struct TYPE_3__ {scalar_t__ is_smcd; } ;


 int smcd_conn_save_peer_info (struct smc_sock*,struct smc_clc_msg_accept_confirm*) ;
 int smcr_conn_save_peer_info (struct smc_sock*,struct smc_clc_msg_accept_confirm*) ;

__attribute__((used)) static void smc_conn_save_peer_info(struct smc_sock *smc,
        struct smc_clc_msg_accept_confirm *clc)
{
 if (smc->conn.lgr->is_smcd)
  smcd_conn_save_peer_info(smc, clc);
 else
  smcr_conn_save_peer_info(smc, clc);
}
