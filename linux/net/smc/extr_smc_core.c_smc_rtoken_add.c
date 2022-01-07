
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct smc_link_group {TYPE_1__** rtokens; int rtokens_used_mask; } ;
typedef int __be64 ;
typedef int __be32 ;
struct TYPE_2__ {scalar_t__ rkey; scalar_t__ dma_addr; } ;


 int SMC_RMBS_PER_LGR_MAX ;
 size_t SMC_SINGLE_LINK ;
 scalar_t__ be64_to_cpu (int ) ;
 scalar_t__ ntohl (int ) ;
 int smc_rmb_reserve_rtoken_idx (struct smc_link_group*) ;
 scalar_t__ test_bit (int,int ) ;

int smc_rtoken_add(struct smc_link_group *lgr, __be64 nw_vaddr, __be32 nw_rkey)
{
 u64 dma_addr = be64_to_cpu(nw_vaddr);
 u32 rkey = ntohl(nw_rkey);
 int i;

 for (i = 0; i < SMC_RMBS_PER_LGR_MAX; i++) {
  if ((lgr->rtokens[i][SMC_SINGLE_LINK].rkey == rkey) &&
      (lgr->rtokens[i][SMC_SINGLE_LINK].dma_addr == dma_addr) &&
      test_bit(i, lgr->rtokens_used_mask)) {

   return i;
  }
 }
 i = smc_rmb_reserve_rtoken_idx(lgr);
 if (i < 0)
  return i;
 lgr->rtokens[i][SMC_SINGLE_LINK].rkey = rkey;
 lgr->rtokens[i][SMC_SINGLE_LINK].dma_addr = dma_addr;
 return i;
}
