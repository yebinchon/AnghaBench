
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smc_ib_device {int ibdev; } ;
struct smc_buf_desc {TYPE_1__* sgt; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_4__ {scalar_t__ dma_address; } ;
struct TYPE_3__ {TYPE_2__* sgl; int orig_nents; } ;


 size_t SMC_SINGLE_LINK ;
 int ib_dma_unmap_sg (int ,TYPE_2__*,int ,int) ;

void smc_ib_buf_unmap_sg(struct smc_ib_device *smcibdev,
    struct smc_buf_desc *buf_slot,
    enum dma_data_direction data_direction)
{
 if (!buf_slot->sgt[SMC_SINGLE_LINK].sgl->dma_address)
  return;

 ib_dma_unmap_sg(smcibdev->ibdev,
   buf_slot->sgt[SMC_SINGLE_LINK].sgl,
   buf_slot->sgt[SMC_SINGLE_LINK].orig_nents,
   data_direction);
 buf_slot->sgt[SMC_SINGLE_LINK].sgl->dma_address = 0;
}
