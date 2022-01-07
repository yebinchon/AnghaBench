
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smc_ib_device {int ibdev; } ;
struct smc_buf_desc {TYPE_1__* sgt; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_2__ {int orig_nents; int sgl; } ;


 int ENOMEM ;
 size_t SMC_SINGLE_LINK ;
 int ib_dma_map_sg (int ,int ,int ,int) ;

int smc_ib_buf_map_sg(struct smc_ib_device *smcibdev,
        struct smc_buf_desc *buf_slot,
        enum dma_data_direction data_direction)
{
 int mapped_nents;

 mapped_nents = ib_dma_map_sg(smcibdev->ibdev,
         buf_slot->sgt[SMC_SINGLE_LINK].sgl,
         buf_slot->sgt[SMC_SINGLE_LINK].orig_nents,
         data_direction);
 if (!mapped_nents)
  return -ENOMEM;

 return mapped_nents;
}
