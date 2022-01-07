
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_buf_desc {int order; int ** mr_rx; } ;
struct ib_pd {int dummy; } ;


 int EINVAL ;
 int IB_MR_TYPE_MEM_REG ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 size_t SMC_SINGLE_LINK ;
 int * ib_alloc_mr (struct ib_pd*,int ,int) ;
 int smc_ib_map_mr_sg (struct smc_buf_desc*) ;

int smc_ib_get_memory_region(struct ib_pd *pd, int access_flags,
        struct smc_buf_desc *buf_slot)
{
 if (buf_slot->mr_rx[SMC_SINGLE_LINK])
  return 0;

 buf_slot->mr_rx[SMC_SINGLE_LINK] =
  ib_alloc_mr(pd, IB_MR_TYPE_MEM_REG, 1 << buf_slot->order);
 if (IS_ERR(buf_slot->mr_rx[SMC_SINGLE_LINK])) {
  int rc;

  rc = PTR_ERR(buf_slot->mr_rx[SMC_SINGLE_LINK]);
  buf_slot->mr_rx[SMC_SINGLE_LINK] = ((void*)0);
  return rc;
 }

 if (smc_ib_map_mr_sg(buf_slot) != 1)
  return -EINVAL;

 return 0;
}
