
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* lgr; } ;
struct smc_sock {scalar_t__ connect_nonblock; TYPE_2__ conn; } ;
struct TYPE_3__ {scalar_t__ is_smcd; } ;


 int SMC_FIRST_CONTACT ;
 int mutex_unlock (int *) ;
 int smc_client_lgr_pending ;
 int smc_conn_free (TYPE_2__*) ;
 int smc_lgr_forget (TYPE_1__*) ;
 int smc_server_lgr_pending ;

__attribute__((used)) static int smc_connect_abort(struct smc_sock *smc, int reason_code,
        int local_contact)
{
 if (local_contact == SMC_FIRST_CONTACT)
  smc_lgr_forget(smc->conn.lgr);
 if (smc->conn.lgr->is_smcd)

  mutex_unlock(&smc_server_lgr_pending);
 else
  mutex_unlock(&smc_client_lgr_pending);

 smc_conn_free(&smc->conn);
 smc->connect_nonblock = 0;
 return reason_code;
}
