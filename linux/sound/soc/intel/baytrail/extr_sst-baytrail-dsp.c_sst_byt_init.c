
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sst_pdata {int dummy; } ;
struct TYPE_2__ {int shim_offset; int dram_offset; int iram_offset; } ;
struct sst_dsp {int id; int dma_dev; TYPE_1__ addr; struct device* dev; } ;
struct sst_adsp_memregion {int start; int end; int blocks; int type; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (struct sst_adsp_memregion*) ;
 int DMA_BIT_MASK (int) ;
 int ENODEV ;
 int SST_BYT_DRAM_OFFSET ;
 int SST_BYT_IRAM_OFFSET ;
 int SST_BYT_SHIM_OFFSET ;

 int SST_IMRD ;
 int SST_IMRX ;
 struct sst_adsp_memregion* byt_region ;
 int dev_err (struct device*,char*) ;
 int dma_coerce_mask_and_coherent (int ,int ) ;
 int sst_byt_resource_map (struct sst_dsp*,struct sst_pdata*) ;
 int sst_dsp_shim_update_bits64 (struct sst_dsp*,int ,int,int) ;
 int sst_mem_block_register (struct sst_dsp*,int,int,int ,int *,int,struct sst_dsp*) ;

__attribute__((used)) static int sst_byt_init(struct sst_dsp *sst, struct sst_pdata *pdata)
{
 const struct sst_adsp_memregion *region;
 struct device *dev;
 int ret = -ENODEV, i, j, region_count;
 u32 offset, size;

 dev = sst->dev;

 switch (sst->id) {
 case 128:
  region = byt_region;
  region_count = ARRAY_SIZE(byt_region);
  sst->addr.iram_offset = SST_BYT_IRAM_OFFSET;
  sst->addr.dram_offset = SST_BYT_DRAM_OFFSET;
  sst->addr.shim_offset = SST_BYT_SHIM_OFFSET;
  break;
 default:
  dev_err(dev, "failed to get mem resources\n");
  return ret;
 }

 ret = sst_byt_resource_map(sst, pdata);
 if (ret < 0) {
  dev_err(dev, "failed to map resources\n");
  return ret;
 }

 ret = dma_coerce_mask_and_coherent(sst->dma_dev, DMA_BIT_MASK(32));
 if (ret)
  return ret;


 sst_dsp_shim_update_bits64(sst, SST_IMRX, 0x3, 0x0);
 sst_dsp_shim_update_bits64(sst, SST_IMRD, 0x3, 0x0);


 for (i = 0; i < region_count; i++) {
  offset = region[i].start;
  size = (region[i].end - region[i].start) / region[i].blocks;


  for (j = 0; j < region[i].blocks; j++) {
   sst_mem_block_register(sst, offset, size,
            region[i].type, ((void*)0), j, sst);
   offset += size;
  }
 }

 return 0;
}
