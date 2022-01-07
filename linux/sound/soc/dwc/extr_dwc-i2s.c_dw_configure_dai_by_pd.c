
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u32 ;
struct snd_soc_dai_driver {int dummy; } ;
struct resource {scalar_t__ start; } ;
struct i2s_platform_data {int filter; int capture_dma_data; int play_dma_data; int snd_rates; } ;
struct TYPE_7__ {int max_burst; int filter; void* addr_width; scalar_t__ addr; int data; } ;
struct TYPE_8__ {TYPE_3__ pd; } ;
struct TYPE_5__ {int max_burst; int filter; void* addr_width; scalar_t__ addr; int data; } ;
struct TYPE_6__ {TYPE_1__ pd; } ;
struct dw_i2s_dev {int quirks; TYPE_4__ capture_dma_data; TYPE_2__ play_dma_data; int i2s_reg_comp1; int i2s_base; } ;


 size_t ARRAY_SIZE (void**) ;
 size_t COMP1_APB_DATA_WIDTH (size_t) ;
 int DW_I2S_QUIRK_16BIT_IDX_OVERRIDE ;
 int EINVAL ;
 scalar_t__ I2S_RXDMA ;
 scalar_t__ I2S_TXDMA ;
 scalar_t__ WARN_ON (int) ;
 void** bus_widths ;
 int dw_configure_dai (struct dw_i2s_dev*,struct snd_soc_dai_driver*,int ) ;
 size_t i2s_read_reg (int ,int ) ;

__attribute__((used)) static int dw_configure_dai_by_pd(struct dw_i2s_dev *dev,
       struct snd_soc_dai_driver *dw_i2s_dai,
       struct resource *res,
       const struct i2s_platform_data *pdata)
{
 u32 comp1 = i2s_read_reg(dev->i2s_base, dev->i2s_reg_comp1);
 u32 idx = COMP1_APB_DATA_WIDTH(comp1);
 int ret;

 if (WARN_ON(idx >= ARRAY_SIZE(bus_widths)))
  return -EINVAL;

 ret = dw_configure_dai(dev, dw_i2s_dai, pdata->snd_rates);
 if (ret < 0)
  return ret;

 if (dev->quirks & DW_I2S_QUIRK_16BIT_IDX_OVERRIDE)
  idx = 1;

 dev->play_dma_data.pd.data = pdata->play_dma_data;
 dev->capture_dma_data.pd.data = pdata->capture_dma_data;
 dev->play_dma_data.pd.addr = res->start + I2S_TXDMA;
 dev->capture_dma_data.pd.addr = res->start + I2S_RXDMA;
 dev->play_dma_data.pd.max_burst = 16;
 dev->capture_dma_data.pd.max_burst = 16;
 dev->play_dma_data.pd.addr_width = bus_widths[idx];
 dev->capture_dma_data.pd.addr_width = bus_widths[idx];
 dev->play_dma_data.pd.filter = pdata->filter;
 dev->capture_dma_data.pd.filter = pdata->filter;

 return 0;
}
