
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_spdifrx_data {int regmap; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;


 int EINVAL ;






 int SPDIFRX_CR_RXDMAEN ;
 int SPDIFRX_IMR_OVRIE ;
 int STM32_SPDIFRX_CR ;
 int STM32_SPDIFRX_IMR ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct stm32_spdifrx_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int stm32_spdifrx_start_sync (struct stm32_spdifrx_data*) ;
 int stm32_spdifrx_stop (struct stm32_spdifrx_data*) ;

__attribute__((used)) static int stm32_spdifrx_trigger(struct snd_pcm_substream *substream, int cmd,
     struct snd_soc_dai *cpu_dai)
{
 struct stm32_spdifrx_data *spdifrx = snd_soc_dai_get_drvdata(cpu_dai);
 int ret = 0;

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  regmap_update_bits(spdifrx->regmap, STM32_SPDIFRX_IMR,
       SPDIFRX_IMR_OVRIE, SPDIFRX_IMR_OVRIE);

  regmap_update_bits(spdifrx->regmap, STM32_SPDIFRX_CR,
       SPDIFRX_CR_RXDMAEN, SPDIFRX_CR_RXDMAEN);

  ret = stm32_spdifrx_start_sync(spdifrx);
  break;
 case 128:
 case 133:
 case 129:
  stm32_spdifrx_stop(spdifrx);
  break;
 default:
  return -EINVAL;
 }

 return ret;
}
