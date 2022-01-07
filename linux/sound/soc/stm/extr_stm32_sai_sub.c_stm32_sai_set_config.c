
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_sai_sub_data {int slots; int regmap; scalar_t__ spdif_frm_cnt; } ;
struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int EINVAL ;
 int SAI_DATASIZE_16 ;
 int SAI_DATASIZE_32 ;
 int SAI_DATASIZE_8 ;
 int SAI_XCR1_DS_MASK ;
 int SAI_XCR1_DS_SET (int ) ;
 int SAI_XCR1_MONO ;
 int SAI_XCR2_FFLUSH ;
 int SAI_XCR2_FTH_MASK ;
 int SAI_XCR2_FTH_SET (int ) ;



 int STM_SAI_CR1_REGX ;
 int STM_SAI_CR2_REGX ;
 int STM_SAI_FIFO_TH_HALF ;
 scalar_t__ STM_SAI_PROTOCOL_IS_SPDIF (struct stm32_sai_sub_data*) ;
 int dev_err (int ,char*) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int params_format (struct snd_pcm_hw_params*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write_bits (int ,int ,int,int) ;
 struct stm32_sai_sub_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int stm32_sai_set_config(struct snd_soc_dai *cpu_dai,
    struct snd_pcm_substream *substream,
    struct snd_pcm_hw_params *params)
{
 struct stm32_sai_sub_data *sai = snd_soc_dai_get_drvdata(cpu_dai);
 int cr1, cr1_mask, ret;






 regmap_write_bits(sai->regmap, STM_SAI_CR2_REGX,
     SAI_XCR2_FFLUSH | SAI_XCR2_FTH_MASK,
     SAI_XCR2_FFLUSH |
     SAI_XCR2_FTH_SET(STM_SAI_FIFO_TH_HALF));


 if (STM_SAI_PROTOCOL_IS_SPDIF(sai)) {
  sai->spdif_frm_cnt = 0;
  return 0;
 }


 cr1_mask = SAI_XCR1_DS_MASK;
 switch (params_format(params)) {
 case 128:
  cr1 = SAI_XCR1_DS_SET(SAI_DATASIZE_8);
  break;
 case 130:
  cr1 = SAI_XCR1_DS_SET(SAI_DATASIZE_16);
  break;
 case 129:
  cr1 = SAI_XCR1_DS_SET(SAI_DATASIZE_32);
  break;
 default:
  dev_err(cpu_dai->dev, "Data format not supported");
  return -EINVAL;
 }

 cr1_mask |= SAI_XCR1_MONO;
 if ((sai->slots == 2) && (params_channels(params) == 1))
  cr1 |= SAI_XCR1_MONO;

 ret = regmap_update_bits(sai->regmap, STM_SAI_CR1_REGX, cr1_mask, cr1);
 if (ret < 0) {
  dev_err(cpu_dai->dev, "Failed to update CR1 register\n");
  return ret;
 }

 return 0;
}
