
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_sai_sub_data {int spdif_frm_cnt; int regmap; } ;
struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {int dummy; } ;


 int EINVAL ;
 unsigned int SAI_XCR1_DMAEN ;
 unsigned int SAI_XCR1_SAIEN ;
 unsigned int SAI_XIMR_MASK ;






 int STM_SAI_CR1_REGX ;
 int STM_SAI_IMR_REGX ;
 int STM_SAI_PROTOCOL_IS_SPDIF (struct stm32_sai_sub_data*) ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 struct stm32_sai_sub_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int stm32_sai_trigger(struct snd_pcm_substream *substream, int cmd,
        struct snd_soc_dai *cpu_dai)
{
 struct stm32_sai_sub_data *sai = snd_soc_dai_get_drvdata(cpu_dai);
 int ret;

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  dev_dbg(cpu_dai->dev, "Enable DMA and SAI\n");

  regmap_update_bits(sai->regmap, STM_SAI_CR1_REGX,
       SAI_XCR1_DMAEN, SAI_XCR1_DMAEN);


  ret = regmap_update_bits(sai->regmap, STM_SAI_CR1_REGX,
      SAI_XCR1_SAIEN, SAI_XCR1_SAIEN);
  if (ret < 0)
   dev_err(cpu_dai->dev, "Failed to update CR1 register\n");
  break;
 case 128:
 case 133:
 case 129:
  dev_dbg(cpu_dai->dev, "Disable DMA and SAI\n");

  regmap_update_bits(sai->regmap, STM_SAI_IMR_REGX,
       SAI_XIMR_MASK, 0);

  regmap_update_bits(sai->regmap, STM_SAI_CR1_REGX,
       SAI_XCR1_SAIEN,
       (unsigned int)~SAI_XCR1_SAIEN);

  ret = regmap_update_bits(sai->regmap, STM_SAI_CR1_REGX,
      SAI_XCR1_DMAEN,
      (unsigned int)~SAI_XCR1_DMAEN);
  if (ret < 0)
   dev_err(cpu_dai->dev, "Failed to update CR1 register\n");

  if (STM_SAI_PROTOCOL_IS_SPDIF(sai))
   sai->spdif_frm_cnt = 0;
  break;
 default:
  return -EINVAL;
 }

 return ret;
}
