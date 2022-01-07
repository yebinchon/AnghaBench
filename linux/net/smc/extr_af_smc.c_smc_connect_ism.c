
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sk_state; } ;
struct smc_sock {TYPE_2__ sk; scalar_t__ connect_nonblock; } ;
struct smc_init_info {int is_smcd; int cln_first_contact; int srv_first_contact; int ism_gid; } ;
struct TYPE_3__ {int flag; } ;
struct smc_clc_msg_accept_confirm {TYPE_1__ hdr; int gid; } ;


 scalar_t__ SMC_ACTIVE ;
 int SMC_CLC_DECL_MEM ;
 scalar_t__ SMC_INIT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ smc_buf_create (struct smc_sock*,int) ;
 int smc_clc_send_confirm (struct smc_sock*) ;
 int smc_close_init (struct smc_sock*) ;
 int smc_conn_create (struct smc_sock*,struct smc_init_info*) ;
 int smc_conn_save_peer_info (struct smc_sock*,struct smc_clc_msg_accept_confirm*) ;
 int smc_connect_abort (struct smc_sock*,int,int ) ;
 int smc_copy_sock_settings_to_clc (struct smc_sock*) ;
 int smc_rx_init (struct smc_sock*) ;
 int smc_server_lgr_pending ;
 int smc_tx_init (struct smc_sock*) ;

__attribute__((used)) static int smc_connect_ism(struct smc_sock *smc,
      struct smc_clc_msg_accept_confirm *aclc,
      struct smc_init_info *ini)
{
 int rc = 0;

 ini->is_smcd = 1;
 ini->ism_gid = aclc->gid;
 ini->srv_first_contact = aclc->hdr.flag;


 mutex_lock(&smc_server_lgr_pending);
 rc = smc_conn_create(smc, ini);
 if (rc) {
  mutex_unlock(&smc_server_lgr_pending);
  return rc;
 }


 if (smc_buf_create(smc, 1))
  return smc_connect_abort(smc, SMC_CLC_DECL_MEM,
      ini->cln_first_contact);

 smc_conn_save_peer_info(smc, aclc);
 smc_close_init(smc);
 smc_rx_init(smc);
 smc_tx_init(smc);

 rc = smc_clc_send_confirm(smc);
 if (rc)
  return smc_connect_abort(smc, rc, ini->cln_first_contact);
 mutex_unlock(&smc_server_lgr_pending);

 smc_copy_sock_settings_to_clc(smc);
 smc->connect_nonblock = 0;
 if (smc->sk.sk_state == SMC_INIT)
  smc->sk.sk_state = SMC_ACTIVE;

 return 0;
}
