
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int maxburst; int addr_width; scalar_t__ addr; } ;
struct stm32_sai_sub_data {scalar_t__ sync; int regmap; int synci; int synco; int np_sync_provider; TYPE_2__* pdata; TYPE_3__ dma_params; scalar_t__ phys_addr; struct snd_soc_dai* cpu_dai; } ;
struct snd_soc_dai {int dev; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_5__ {int fifo_size; } ;
struct TYPE_6__ {int (* set_sync ) (TYPE_2__*,int ,int ,int ) ;TYPE_1__ conf; } ;


 int DMA_SLAVE_BUSWIDTH_UNDEFINED ;
 scalar_t__ SAI_SYNC_EXTERNAL ;
 int SAI_XCR1_RX_TX ;
 int SAI_XCR1_SYNCEN_MASK ;
 int SAI_XCR1_SYNCEN_SET (scalar_t__) ;
 int STM_SAI_CR1_REGX ;
 scalar_t__ STM_SAI_DR_REGX ;
 scalar_t__ STM_SAI_IS_CAPTURE (struct stm32_sai_sub_data*) ;
 scalar_t__ STM_SAI_IS_PLAYBACK (struct stm32_sai_sub_data*) ;
 scalar_t__ STM_SAI_PROTOCOL_IS_SPDIF (struct stm32_sai_sub_data*) ;
 struct stm32_sai_sub_data* dev_get_drvdata (int ) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int snd_soc_dai_init_dma_data (struct snd_soc_dai*,TYPE_3__*,TYPE_3__*) ;
 int stub1 (TYPE_2__*,int ,int ,int ) ;

__attribute__((used)) static int stm32_sai_dai_probe(struct snd_soc_dai *cpu_dai)
{
 struct stm32_sai_sub_data *sai = dev_get_drvdata(cpu_dai->dev);
 int cr1 = 0, cr1_mask, ret;

 sai->cpu_dai = cpu_dai;

 sai->dma_params.addr = (dma_addr_t)(sai->phys_addr + STM_SAI_DR_REGX);





 sai->dma_params.maxburst = 4;
 if (sai->pdata->conf.fifo_size < 8)
  sai->dma_params.maxburst = 1;

 sai->dma_params.addr_width = DMA_SLAVE_BUSWIDTH_UNDEFINED;

 if (STM_SAI_IS_PLAYBACK(sai))
  snd_soc_dai_init_dma_data(cpu_dai, &sai->dma_params, ((void*)0));
 else
  snd_soc_dai_init_dma_data(cpu_dai, ((void*)0), &sai->dma_params);


 if (STM_SAI_PROTOCOL_IS_SPDIF(sai))
  return 0;

 cr1_mask = SAI_XCR1_RX_TX;
 if (STM_SAI_IS_CAPTURE(sai))
  cr1 |= SAI_XCR1_RX_TX;


 if (sai->sync == SAI_SYNC_EXTERNAL) {

  ret = sai->pdata->set_sync(sai->pdata, sai->np_sync_provider,
        sai->synco, sai->synci);
  if (ret)
   return ret;
 }

 cr1_mask |= SAI_XCR1_SYNCEN_MASK;
 cr1 |= SAI_XCR1_SYNCEN_SET(sai->sync);

 return regmap_update_bits(sai->regmap, STM_SAI_CR1_REGX, cr1_mask, cr1);
}
