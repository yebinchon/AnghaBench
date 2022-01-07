
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sst_mem_block {scalar_t__ users; int offset; int index; int type; struct sst_dsp* dsp; } ;
struct TYPE_2__ {scalar_t__ pci_cfg; } ;
struct sst_dsp {TYPE_1__ addr; int dev; } ;


 int SST_VDRTCL0_DSRAMPGE_SHIFT ;
 int SST_VDRTCL2_DCLCGE ;
 scalar_t__ SST_VDRTCTL0 ;
 scalar_t__ SST_VDRTCTL2 ;
 int dev_dbg (int ,char*,int ,int ,int ) ;
 int hsw_block_get_bit (struct sst_mem_block*) ;
 int readl (scalar_t__) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int hsw_block_disable(struct sst_mem_block *block)
{
 struct sst_dsp *sst = block->dsp;
 u32 bit, val;

 if (--block->users > 0)
  return 0;

 dev_dbg(block->dsp->dev, " disabled block %d:%d at offset 0x%x\n",
  block->type, block->index, block->offset);


 val = readl(sst->addr.pci_cfg + SST_VDRTCTL2);
 val &= ~SST_VDRTCL2_DCLCGE;
 writel(val, sst->addr.pci_cfg + SST_VDRTCTL2);


 val = readl(sst->addr.pci_cfg + SST_VDRTCTL0);
 bit = hsw_block_get_bit(block);

 if (bit != (1 << SST_VDRTCL0_DSRAMPGE_SHIFT))
  writel(val | bit, sst->addr.pci_cfg + SST_VDRTCTL0);


 udelay(10);


 val = readl(sst->addr.pci_cfg + SST_VDRTCTL2);
 val |= SST_VDRTCL2_DCLCGE;
 writel(val, sst->addr.pci_cfg + SST_VDRTCTL2);

 udelay(50);

 return 0;
}
