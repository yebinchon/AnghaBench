
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smc_buf_desc {TYPE_1__* sgt; int * mr_rx; } ;
struct TYPE_2__ {int orig_nents; int sgl; } ;


 int PAGE_SIZE ;
 size_t SMC_SINGLE_LINK ;
 int ib_map_mr_sg (int ,int ,int ,unsigned int*,int ) ;

__attribute__((used)) static int smc_ib_map_mr_sg(struct smc_buf_desc *buf_slot)
{
 unsigned int offset = 0;
 int sg_num;


 sg_num = ib_map_mr_sg(buf_slot->mr_rx[SMC_SINGLE_LINK],
         buf_slot->sgt[SMC_SINGLE_LINK].sgl,
         buf_slot->sgt[SMC_SINGLE_LINK].orig_nents,
         &offset, PAGE_SIZE);

 return sg_num;
}
