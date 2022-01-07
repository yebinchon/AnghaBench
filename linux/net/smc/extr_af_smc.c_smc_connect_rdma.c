
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ sk_state; } ;
struct TYPE_9__ {int rmb_desc; TYPE_2__* lgr; } ;
struct smc_sock {TYPE_3__ sk; scalar_t__ connect_nonblock; TYPE_4__ conn; } ;
struct smc_link {int dummy; } ;
struct smc_init_info {int is_smcd; scalar_t__ cln_first_contact; int srv_first_contact; int ib_clcqpn; int * ib_lcl; } ;
struct TYPE_6__ {int flag; } ;
struct smc_clc_msg_accept_confirm {TYPE_1__ hdr; int qpn; int lcl; } ;
struct TYPE_7__ {struct smc_link* lnk; } ;


 scalar_t__ SMC_ACTIVE ;
 int SMC_CLC_DECL_ERR_RDYLNK ;
 int SMC_CLC_DECL_ERR_REGRMB ;
 int SMC_CLC_DECL_ERR_RTOK ;
 int SMC_CLC_DECL_MEM ;
 scalar_t__ SMC_FIRST_CONTACT ;
 scalar_t__ SMC_INIT ;
 size_t SMC_SINGLE_LINK ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ntoh24 (int ) ;
 scalar_t__ smc_buf_create (struct smc_sock*,int) ;
 int smc_clc_send_confirm (struct smc_sock*) ;
 int smc_client_lgr_pending ;
 int smc_clnt_conf_first_link (struct smc_sock*) ;
 int smc_close_init (struct smc_sock*) ;
 int smc_conn_create (struct smc_sock*,struct smc_init_info*) ;
 int smc_conn_save_peer_info (struct smc_sock*,struct smc_clc_msg_accept_confirm*) ;
 int smc_connect_abort (struct smc_sock*,int,scalar_t__) ;
 int smc_copy_sock_settings_to_clc (struct smc_sock*) ;
 scalar_t__ smc_ib_ready_link (struct smc_link*) ;
 int smc_link_save_peer_info (struct smc_link*,struct smc_clc_msg_accept_confirm*) ;
 scalar_t__ smc_reg_rmb (struct smc_link*,int ,int) ;
 scalar_t__ smc_rmb_rtoken_handling (TYPE_4__*,struct smc_clc_msg_accept_confirm*) ;
 int smc_rmb_sync_sg_for_device (TYPE_4__*) ;
 int smc_rx_init (struct smc_sock*) ;
 int smc_tx_init (struct smc_sock*) ;

__attribute__((used)) static int smc_connect_rdma(struct smc_sock *smc,
       struct smc_clc_msg_accept_confirm *aclc,
       struct smc_init_info *ini)
{
 struct smc_link *link;
 int reason_code = 0;

 ini->is_smcd = 0;
 ini->ib_lcl = &aclc->lcl;
 ini->ib_clcqpn = ntoh24(aclc->qpn);
 ini->srv_first_contact = aclc->hdr.flag;

 mutex_lock(&smc_client_lgr_pending);
 reason_code = smc_conn_create(smc, ini);
 if (reason_code) {
  mutex_unlock(&smc_client_lgr_pending);
  return reason_code;
 }
 link = &smc->conn.lgr->lnk[SMC_SINGLE_LINK];

 smc_conn_save_peer_info(smc, aclc);


 if (smc_buf_create(smc, 0))
  return smc_connect_abort(smc, SMC_CLC_DECL_MEM,
      ini->cln_first_contact);

 if (ini->cln_first_contact == SMC_FIRST_CONTACT)
  smc_link_save_peer_info(link, aclc);

 if (smc_rmb_rtoken_handling(&smc->conn, aclc))
  return smc_connect_abort(smc, SMC_CLC_DECL_ERR_RTOK,
      ini->cln_first_contact);

 smc_close_init(smc);
 smc_rx_init(smc);

 if (ini->cln_first_contact == SMC_FIRST_CONTACT) {
  if (smc_ib_ready_link(link))
   return smc_connect_abort(smc, SMC_CLC_DECL_ERR_RDYLNK,
       ini->cln_first_contact);
 } else {
  if (smc_reg_rmb(link, smc->conn.rmb_desc, 1))
   return smc_connect_abort(smc, SMC_CLC_DECL_ERR_REGRMB,
       ini->cln_first_contact);
 }
 smc_rmb_sync_sg_for_device(&smc->conn);

 reason_code = smc_clc_send_confirm(smc);
 if (reason_code)
  return smc_connect_abort(smc, reason_code,
      ini->cln_first_contact);

 smc_tx_init(smc);

 if (ini->cln_first_contact == SMC_FIRST_CONTACT) {

  reason_code = smc_clnt_conf_first_link(smc);
  if (reason_code)
   return smc_connect_abort(smc, reason_code,
       ini->cln_first_contact);
 }
 mutex_unlock(&smc_client_lgr_pending);

 smc_copy_sock_settings_to_clc(smc);
 smc->connect_nonblock = 0;
 if (smc->sk.sk_state == SMC_INIT)
  smc->sk.sk_state = SMC_ACTIVE;

 return 0;
}
