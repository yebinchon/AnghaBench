
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_sai_sub_data {int master; unsigned int fmt; int regmap; scalar_t__ sync; } ;
struct snd_soc_dai {int dev; } ;


 int EINVAL ;
 int SAI_FREE_PROTOCOL ;
 int SAI_SPDIF_PROTOCOL ;
 int SAI_XCR1_CKSTR ;
 int SAI_XCR1_NODIV ;
 int SAI_XCR1_PRTCFG_MASK ;
 int SAI_XCR1_PRTCFG_SET (int ) ;
 int SAI_XCR1_SLAVE ;
 int SAI_XFRCR_FSDEF ;
 int SAI_XFRCR_FSOFF ;
 int SAI_XFRCR_FSPOL ;




 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;



 unsigned int SND_SOC_DAIFMT_INV_MASK ;

 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;



 int STM_SAI_CR1_REGX ;
 int STM_SAI_FRCR_REGX ;
 scalar_t__ STM_SAI_PROTOCOL_IS_SPDIF (struct stm32_sai_sub_data*) ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,...) ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct stm32_sai_sub_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int stm32_sai_set_dai_fmt(struct snd_soc_dai *cpu_dai, unsigned int fmt)
{
 struct stm32_sai_sub_data *sai = snd_soc_dai_get_drvdata(cpu_dai);
 int cr1, frcr = 0;
 int cr1_mask, frcr_mask = 0;
 int ret;

 dev_dbg(cpu_dai->dev, "fmt %x\n", fmt);


 cr1 = SAI_XCR1_NODIV;
 cr1_mask = SAI_XCR1_NODIV;

 cr1_mask |= SAI_XCR1_PRTCFG_MASK;
 if (STM_SAI_PROTOCOL_IS_SPDIF(sai)) {
  cr1 |= SAI_XCR1_PRTCFG_SET(SAI_SPDIF_PROTOCOL);
  goto conf_update;
 }

 cr1 |= SAI_XCR1_PRTCFG_SET(SAI_FREE_PROTOCOL);

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {

 case 134:
  cr1 |= SAI_XCR1_CKSTR;
  frcr |= SAI_XFRCR_FSOFF | SAI_XFRCR_FSDEF;
  break;

 case 130:
  frcr |= SAI_XFRCR_FSPOL | SAI_XFRCR_FSDEF;
  break;

 case 131:
  frcr |= SAI_XFRCR_FSPOL | SAI_XFRCR_FSDEF;
  break;
 case 136:
  frcr |= SAI_XFRCR_FSPOL | SAI_XFRCR_FSOFF;
  break;
 case 135:
  frcr |= SAI_XFRCR_FSPOL;
  break;
 default:
  dev_err(cpu_dai->dev, "Unsupported protocol %#x\n",
   fmt & SND_SOC_DAIFMT_FORMAT_MASK);
  return -EINVAL;
 }

 cr1_mask |= SAI_XCR1_CKSTR;
 frcr_mask |= SAI_XFRCR_FSPOL | SAI_XFRCR_FSOFF |
       SAI_XFRCR_FSDEF;


 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 128:
  break;
 case 132:
  cr1 ^= SAI_XCR1_CKSTR;
  break;
 case 129:
  frcr ^= SAI_XFRCR_FSPOL;
  break;
 case 133:

  cr1 ^= SAI_XCR1_CKSTR;
  frcr ^= SAI_XFRCR_FSPOL;
  break;
 default:
  dev_err(cpu_dai->dev, "Unsupported strobing %#x\n",
   fmt & SND_SOC_DAIFMT_INV_MASK);
  return -EINVAL;
 }
 cr1_mask |= SAI_XCR1_CKSTR;
 frcr_mask |= SAI_XFRCR_FSPOL;

 regmap_update_bits(sai->regmap, STM_SAI_FRCR_REGX, frcr_mask, frcr);


 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 138:

  cr1 |= SAI_XCR1_SLAVE;
  sai->master = 0;
  break;
 case 137:
  sai->master = 1;
  break;
 default:
  dev_err(cpu_dai->dev, "Unsupported mode %#x\n",
   fmt & SND_SOC_DAIFMT_MASTER_MASK);
  return -EINVAL;
 }


 if (sai->sync) {
  dev_dbg(cpu_dai->dev, "Synchronized SAI configured as slave\n");
  cr1 |= SAI_XCR1_SLAVE;
  sai->master = 0;
 }

 cr1_mask |= SAI_XCR1_SLAVE;

conf_update:
 ret = regmap_update_bits(sai->regmap, STM_SAI_CR1_REGX, cr1_mask, cr1);
 if (ret < 0) {
  dev_err(cpu_dai->dev, "Failed to update CR1 register\n");
  return ret;
 }

 sai->fmt = fmt;

 return 0;
}
