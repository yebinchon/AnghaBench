
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int maxburst; scalar_t__ addr; } ;
struct stm32_spdifrx_data {TYPE_1__ dma_params; scalar_t__ phys_addr; } ;
struct snd_soc_dai {int dev; } ;
typedef scalar_t__ dma_addr_t ;


 scalar_t__ STM32_SPDIFRX_DR ;
 struct stm32_spdifrx_data* dev_get_drvdata (int ) ;
 int snd_soc_dai_init_dma_data (struct snd_soc_dai*,int *,TYPE_1__*) ;
 int stm32_spdifrx_dai_register_ctrls (struct snd_soc_dai*) ;

__attribute__((used)) static int stm32_spdifrx_dai_probe(struct snd_soc_dai *cpu_dai)
{
 struct stm32_spdifrx_data *spdifrx = dev_get_drvdata(cpu_dai->dev);

 spdifrx->dma_params.addr = (dma_addr_t)(spdifrx->phys_addr +
       STM32_SPDIFRX_DR);
 spdifrx->dma_params.maxburst = 1;

 snd_soc_dai_init_dma_data(cpu_dai, ((void*)0), &spdifrx->dma_params);

 return stm32_spdifrx_dai_register_ctrls(cpu_dai);
}
