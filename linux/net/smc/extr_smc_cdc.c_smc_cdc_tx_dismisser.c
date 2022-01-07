
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_wr_tx_pend_priv {int dummy; } ;
struct smc_cdc_tx_pend {int * conn; } ;



__attribute__((used)) static void smc_cdc_tx_dismisser(struct smc_wr_tx_pend_priv *tx_pend)
{
 struct smc_cdc_tx_pend *cdc_pend =
  (struct smc_cdc_tx_pend *)tx_pend;

 cdc_pend->conn = ((void*)0);
}
