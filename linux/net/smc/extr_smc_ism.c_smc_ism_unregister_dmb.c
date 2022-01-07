
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smcd_dmb {int dmb_len; int dma_addr; int cpu_addr; int sba_idx; int dmb_tok; } ;
struct smcd_dev {TYPE_1__* ops; } ;
struct smc_buf_desc {int len; int dma_addr; int cpu_addr; int sba_idx; int token; } ;
typedef int dmb ;
struct TYPE_2__ {int (* unregister_dmb ) (struct smcd_dev*,struct smcd_dmb*) ;} ;


 int memset (struct smcd_dmb*,int ,int) ;
 int stub1 (struct smcd_dev*,struct smcd_dmb*) ;

int smc_ism_unregister_dmb(struct smcd_dev *smcd, struct smc_buf_desc *dmb_desc)
{
 struct smcd_dmb dmb;

 memset(&dmb, 0, sizeof(dmb));
 dmb.dmb_tok = dmb_desc->token;
 dmb.sba_idx = dmb_desc->sba_idx;
 dmb.cpu_addr = dmb_desc->cpu_addr;
 dmb.dma_addr = dmb_desc->dma_addr;
 dmb.dmb_len = dmb_desc->len;
 return smcd->ops->unregister_dmb(smcd, &dmb);
}
