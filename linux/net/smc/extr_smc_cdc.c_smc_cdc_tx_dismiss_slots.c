
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smc_link {int dummy; } ;
struct smc_connection {TYPE_1__* lgr; } ;
struct TYPE_2__ {struct smc_link* lnk; } ;


 int SMC_CDC_MSG_TYPE ;
 size_t SMC_SINGLE_LINK ;
 int smc_cdc_tx_dismisser ;
 int smc_cdc_tx_filter ;
 int smc_wr_tx_dismiss_slots (struct smc_link*,int ,int ,int ,unsigned long) ;

void smc_cdc_tx_dismiss_slots(struct smc_connection *conn)
{
 struct smc_link *link = &conn->lgr->lnk[SMC_SINGLE_LINK];

 smc_wr_tx_dismiss_slots(link, SMC_CDC_MSG_TYPE,
    smc_cdc_tx_filter, smc_cdc_tx_dismisser,
    (unsigned long)conn);
}
