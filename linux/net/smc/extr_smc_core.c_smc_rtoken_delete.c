
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct smc_link_group {int rtokens_used_mask; TYPE_1__** rtokens; } ;
typedef int __be32 ;
struct TYPE_2__ {scalar_t__ rkey; scalar_t__ dma_addr; } ;


 int ENOENT ;
 int SMC_RMBS_PER_LGR_MAX ;
 size_t SMC_SINGLE_LINK ;
 int clear_bit (int,int ) ;
 scalar_t__ ntohl (int ) ;
 scalar_t__ test_bit (int,int ) ;

int smc_rtoken_delete(struct smc_link_group *lgr, __be32 nw_rkey)
{
 u32 rkey = ntohl(nw_rkey);
 int i;

 for (i = 0; i < SMC_RMBS_PER_LGR_MAX; i++) {
  if (lgr->rtokens[i][SMC_SINGLE_LINK].rkey == rkey &&
      test_bit(i, lgr->rtokens_used_mask)) {
   lgr->rtokens[i][SMC_SINGLE_LINK].rkey = 0;
   lgr->rtokens[i][SMC_SINGLE_LINK].dma_addr = 0;

   clear_bit(i, lgr->rtokens_used_mask);
   return 0;
  }
 }
 return -ENOENT;
}
