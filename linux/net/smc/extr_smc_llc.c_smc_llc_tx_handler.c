
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_wr_tx_pend_priv {int dummy; } ;
struct smc_link {int dummy; } ;
typedef enum ib_wc_status { ____Placeholder_ib_wc_status } ib_wc_status ;



__attribute__((used)) static void smc_llc_tx_handler(struct smc_wr_tx_pend_priv *pend,
          struct smc_link *link,
          enum ib_wc_status wc_status)
{

}
