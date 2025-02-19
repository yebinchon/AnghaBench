
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smc_link_group {TYPE_1__* lnk; scalar_t__ is_smcd; } ;
struct smc_connection {int sndbuf_desc; struct smc_link_group* lgr; } ;
struct TYPE_2__ {int smcibdev; } ;


 int DMA_TO_DEVICE ;
 size_t SMC_SINGLE_LINK ;
 int smc_ib_sync_sg_for_cpu (int ,int ,int ) ;

void smc_sndbuf_sync_sg_for_cpu(struct smc_connection *conn)
{
 struct smc_link_group *lgr = conn->lgr;

 if (!conn->lgr || conn->lgr->is_smcd)
  return;
 smc_ib_sync_sg_for_cpu(lgr->lnk[SMC_SINGLE_LINK].smcibdev,
          conn->sndbuf_desc, DMA_TO_DEVICE);
}
