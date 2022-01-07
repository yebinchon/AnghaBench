
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lgr; } ;
struct smc_sock {int fallback_rsn; TYPE_1__ conn; } ;


 int SMC_CLC_DECL_PEERDECL ;
 int SMC_FIRST_CONTACT ;
 scalar_t__ smc_clc_send_decline (struct smc_sock*,int) ;
 int smc_conn_free (TYPE_1__*) ;
 int smc_lgr_forget (int ) ;
 int smc_listen_out_connected (struct smc_sock*) ;
 int smc_listen_out_err (struct smc_sock*) ;
 int smc_switch_to_fallback (struct smc_sock*) ;

__attribute__((used)) static void smc_listen_decline(struct smc_sock *new_smc, int reason_code,
          int local_contact)
{

 if (local_contact == SMC_FIRST_CONTACT)
  smc_lgr_forget(new_smc->conn.lgr);
 if (reason_code < 0) {
  smc_listen_out_err(new_smc);
  return;
 }
 smc_conn_free(&new_smc->conn);
 smc_switch_to_fallback(new_smc);
 new_smc->fallback_rsn = reason_code;
 if (reason_code && reason_code != SMC_CLC_DECL_PEERDECL) {
  if (smc_clc_send_decline(new_smc, reason_code) < 0) {
   smc_listen_out_err(new_smc);
   return;
  }
 }
 smc_listen_out_connected(new_smc);
}
