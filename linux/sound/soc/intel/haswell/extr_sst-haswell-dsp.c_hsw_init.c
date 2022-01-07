
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sst_pdata {int dummy; } ;
struct TYPE_2__ {scalar_t__ pci_cfg; int shim_offset; int dsp_dram_offset; int dsp_iram_offset; int iram_offset; } ;
struct sst_dsp {int id; TYPE_1__ addr; struct device* dma_dev; } ;
struct sst_adsp_memregion {int start; int end; int blocks; int type; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (struct sst_adsp_memregion*) ;
 int DMA_BIT_MASK (int) ;
 int ENODEV ;


 int SST_LPT_DSP_DRAM_OFFSET ;
 int SST_LPT_DSP_IRAM_OFFSET ;
 int SST_LP_IRAM_OFFSET ;
 int SST_LP_SHIM_OFFSET ;
 int SST_VDRTCL0_DSRAMPGE_SHIFT ;
 scalar_t__ SST_VDRTCTL0 ;
 int SST_WPT_DSP_DRAM_OFFSET ;
 int SST_WPT_DSP_IRAM_OFFSET ;
 int SST_WPT_IRAM_OFFSET ;
 int SST_WPT_SHIM_OFFSET ;
 int dev_err (struct device*,char*) ;
 int dma_coerce_mask_and_coherent (struct device*,int ) ;
 int hsw_acpi_resource_map (struct sst_dsp*,struct sst_pdata*) ;
 int hsw_set_dsp_D0 (struct sst_dsp*) ;
 struct sst_adsp_memregion* lp_region ;
 int sst_hsw_ops ;
 int sst_mem_block_register (struct sst_dsp*,int,int,int ,int *,int,struct sst_dsp*) ;
 struct sst_adsp_memregion* wpt_region ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int hsw_init(struct sst_dsp *sst, struct sst_pdata *pdata)
{
 const struct sst_adsp_memregion *region;
 struct device *dev;
 int ret = -ENODEV, i, j, region_count;
 u32 offset, size, fw_dump_bit;

 dev = sst->dma_dev;

 switch (sst->id) {
 case 129:
  region = lp_region;
  region_count = ARRAY_SIZE(lp_region);
  sst->addr.iram_offset = SST_LP_IRAM_OFFSET;
  sst->addr.dsp_iram_offset = SST_LPT_DSP_IRAM_OFFSET;
  sst->addr.dsp_dram_offset = SST_LPT_DSP_DRAM_OFFSET;
  sst->addr.shim_offset = SST_LP_SHIM_OFFSET;
  break;
 case 128:
  region = wpt_region;
  region_count = ARRAY_SIZE(wpt_region);
  sst->addr.iram_offset = SST_WPT_IRAM_OFFSET;
  sst->addr.dsp_iram_offset = SST_WPT_DSP_IRAM_OFFSET;
  sst->addr.dsp_dram_offset = SST_WPT_DSP_DRAM_OFFSET;
  sst->addr.shim_offset = SST_WPT_SHIM_OFFSET;
  break;
 default:
  dev_err(dev, "error: failed to get mem resources\n");
  return ret;
 }

 ret = hsw_acpi_resource_map(sst, pdata);
 if (ret < 0) {
  dev_err(dev, "error: failed to map resources\n");
  return ret;
 }


 ret = hsw_set_dsp_D0(sst);
 if (ret < 0) {
  dev_err(dev, "error: failed to set DSP D0 and reset SHIM\n");
  return ret;
 }

 ret = dma_coerce_mask_and_coherent(dev, DMA_BIT_MASK(31));
 if (ret)
  return ret;



 for (i = 0; i < region_count; i++) {
  offset = region[i].start;
  size = (region[i].end - region[i].start) / region[i].blocks;


  for (j = 0; j < region[i].blocks; j++) {
   sst_mem_block_register(sst, offset, size,
    region[i].type, &sst_hsw_ops, j, sst);
   offset += size;
  }
 }


 fw_dump_bit = 1 << SST_VDRTCL0_DSRAMPGE_SHIFT;


 writel(0xffffffff & ~fw_dump_bit, sst->addr.pci_cfg + SST_VDRTCTL0);

 return 0;
}
