
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_wr_tx_pend_priv {int dummy; } ;
struct smc_wr_buf {int dummy; } ;
struct smc_llc_msg_del_link {int dummy; } ;
struct smc_link {int dummy; } ;
typedef enum smc_llc_reqresp { ____Placeholder_smc_llc_reqresp } smc_llc_reqresp ;


 int smc_llc_add_pending_send (struct smc_link*,struct smc_wr_buf**,struct smc_wr_tx_pend_priv**) ;
 int smc_llc_prep_delete_link (struct smc_llc_msg_del_link*,struct smc_link*,int,int) ;
 int smc_wr_tx_send (struct smc_link*,struct smc_wr_tx_pend_priv*) ;

int smc_llc_send_delete_link(struct smc_link *link,
        enum smc_llc_reqresp reqresp, bool orderly)
{
 struct smc_llc_msg_del_link *delllc;
 struct smc_wr_tx_pend_priv *pend;
 struct smc_wr_buf *wr_buf;
 int rc;

 rc = smc_llc_add_pending_send(link, &wr_buf, &pend);
 if (rc)
  return rc;
 delllc = (struct smc_llc_msg_del_link *)wr_buf;
 smc_llc_prep_delete_link(delllc, link, reqresp, orderly);

 rc = smc_wr_tx_send(link, pend);
 return rc;
}
