
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_dai {int dummy; } ;
struct fsl_esai {int slave_mode; int regmap; } ;


 int EINVAL ;
 int ESAI_xCCR_xCKD ;
 int ESAI_xCCR_xCKP ;
 int ESAI_xCCR_xFSD ;
 int ESAI_xCCR_xFSP ;
 int ESAI_xCCR_xHCKP ;
 int ESAI_xCR_xFSL ;
 int ESAI_xCR_xFSR ;
 int ESAI_xCR_xWA ;
 int REG_ESAI_RCCR ;
 int REG_ESAI_RCR ;
 int REG_ESAI_TCCR ;
 int REG_ESAI_TCR ;






 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;



 unsigned int SND_SOC_DAIFMT_INV_MASK ;

 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;



 int regmap_update_bits (int ,int ,int,int) ;
 struct fsl_esai* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int fsl_esai_set_dai_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct fsl_esai *esai_priv = snd_soc_dai_get_drvdata(dai);
 u32 xcr = 0, xccr = 0, mask;


 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 134:

  xcr |= ESAI_xCR_xFSR;
  xccr |= ESAI_xCCR_xFSP | ESAI_xCCR_xCKP | ESAI_xCCR_xHCKP;
  break;
 case 131:

  xccr |= ESAI_xCCR_xCKP | ESAI_xCCR_xHCKP;
  break;
 case 128:

  xccr |= ESAI_xCCR_xCKP | ESAI_xCCR_xHCKP;
  xcr |= ESAI_xCR_xWA;
  break;
 case 136:

  xcr |= ESAI_xCR_xFSL | ESAI_xCR_xFSR;
  xccr |= ESAI_xCCR_xCKP | ESAI_xCCR_xHCKP;
  break;
 case 135:

  xcr |= ESAI_xCR_xFSL;
  xccr |= ESAI_xCCR_xCKP | ESAI_xCCR_xHCKP;
  break;
 default:
  return -EINVAL;
 }


 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 129:

  break;
 case 132:

  xccr ^= ESAI_xCCR_xCKP | ESAI_xCCR_xHCKP;
  break;
 case 130:

  xccr ^= ESAI_xCCR_xFSP;
  break;
 case 133:

  xccr ^= ESAI_xCCR_xCKP | ESAI_xCCR_xHCKP | ESAI_xCCR_xFSP;
  break;
 default:
  return -EINVAL;
 }

 esai_priv->slave_mode = 0;


 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 140:
  esai_priv->slave_mode = 1;
  break;
 case 138:
  xccr |= ESAI_xCCR_xCKD;
  break;
 case 139:
  xccr |= ESAI_xCCR_xFSD;
  break;
 case 137:
  xccr |= ESAI_xCCR_xFSD | ESAI_xCCR_xCKD;
  break;
 default:
  return -EINVAL;
 }

 mask = ESAI_xCR_xFSL | ESAI_xCR_xFSR | ESAI_xCR_xWA;
 regmap_update_bits(esai_priv->regmap, REG_ESAI_TCR, mask, xcr);
 regmap_update_bits(esai_priv->regmap, REG_ESAI_RCR, mask, xcr);

 mask = ESAI_xCCR_xCKP | ESAI_xCCR_xHCKP | ESAI_xCCR_xFSP |
  ESAI_xCCR_xFSD | ESAI_xCCR_xCKD;
 regmap_update_bits(esai_priv->regmap, REG_ESAI_TCCR, mask, xccr);
 regmap_update_bits(esai_priv->regmap, REG_ESAI_RCCR, mask, xccr);

 return 0;
}
