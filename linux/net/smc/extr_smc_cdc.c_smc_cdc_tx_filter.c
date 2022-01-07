
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_wr_tx_pend_priv {int dummy; } ;
struct smc_connection {int dummy; } ;
struct smc_cdc_tx_pend {struct smc_connection* conn; } ;



__attribute__((used)) static bool smc_cdc_tx_filter(struct smc_wr_tx_pend_priv *tx_pend,
         unsigned long data)
{
 struct smc_connection *conn = (struct smc_connection *)data;
 struct smc_cdc_tx_pend *cdc_pend =
  (struct smc_cdc_tx_pend *)tx_pend;

 return cdc_pend->conn == conn;
}
