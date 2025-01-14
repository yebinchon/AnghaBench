
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union smc_llc_msg {int dummy; } smc_llc_msg ;
struct smc_wr_tx_pend_priv {int dummy; } ;
struct smc_wr_buf {int dummy; } ;
struct smc_llc_tx_pend {int dummy; } ;
struct smc_link {int dummy; } ;


 int BUILD_BUG_ON_MSG (int,char*) ;
 int SMC_WR_BUF_SIZE ;
 int SMC_WR_TX_PEND_PRIV_SIZE ;
 int SMC_WR_TX_SIZE ;
 int smc_llc_tx_handler ;
 int smc_wr_tx_get_free_slot (struct smc_link*,int ,struct smc_wr_buf**,int *,struct smc_wr_tx_pend_priv**) ;

__attribute__((used)) static int smc_llc_add_pending_send(struct smc_link *link,
        struct smc_wr_buf **wr_buf,
        struct smc_wr_tx_pend_priv **pend)
{
 int rc;

 rc = smc_wr_tx_get_free_slot(link, smc_llc_tx_handler, wr_buf, ((void*)0),
         pend);
 if (rc < 0)
  return rc;
 BUILD_BUG_ON_MSG(
  sizeof(union smc_llc_msg) > SMC_WR_BUF_SIZE,
  "must increase SMC_WR_BUF_SIZE to at least sizeof(struct smc_llc_msg)");
 BUILD_BUG_ON_MSG(
  sizeof(union smc_llc_msg) != SMC_WR_TX_SIZE,
  "must adapt SMC_WR_TX_SIZE to sizeof(struct smc_llc_msg); if not all smc_wr upper layer protocols use the same message size any more, must start to set link->wr_tx_sges[i].length on each individual smc_wr_tx_send()");
 BUILD_BUG_ON_MSG(
  sizeof(struct smc_llc_tx_pend) > SMC_WR_TX_PEND_PRIV_SIZE,
  "must increase SMC_WR_TX_PEND_PRIV_SIZE to at least sizeof(struct smc_llc_tx_pend)");
 return 0;
}
