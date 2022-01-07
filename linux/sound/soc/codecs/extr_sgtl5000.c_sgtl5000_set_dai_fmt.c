
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct sgtl5000_priv {int master; unsigned int fmt; } ;


 int EINVAL ;
 int SGTL5000_CHIP_I2S_CTRL ;
 int SGTL5000_I2S_LRALIGN ;
 int SGTL5000_I2S_LRPOL ;
 int SGTL5000_I2S_MASTER ;
 int SGTL5000_I2S_MODE_I2S_LJ ;
 int SGTL5000_I2S_MODE_PCM ;
 int SGTL5000_I2S_MODE_RJ ;
 int SGTL5000_I2S_MODE_SHIFT ;
 int SGTL5000_I2S_SCLK_INV ;




 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;


 unsigned int SND_SOC_DAIFMT_INV_MASK ;

 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;


 struct sgtl5000_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int sgtl5000_set_dai_fmt(struct snd_soc_dai *codec_dai, unsigned int fmt)
{
 struct snd_soc_component *component = codec_dai->component;
 struct sgtl5000_priv *sgtl5000 = snd_soc_component_get_drvdata(component);
 u16 i2sctl = 0;

 sgtl5000->master = 0;






 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 135:
  break;
 case 136:
  i2sctl |= SGTL5000_I2S_MASTER;
  sgtl5000->master = 1;
  break;
 default:
  return -EINVAL;
 }


 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 134:
  i2sctl |= SGTL5000_I2S_MODE_PCM << SGTL5000_I2S_MODE_SHIFT;
  break;
 case 133:
  i2sctl |= SGTL5000_I2S_MODE_PCM << SGTL5000_I2S_MODE_SHIFT;
  i2sctl |= SGTL5000_I2S_LRALIGN;
  break;
 case 132:
  i2sctl |= SGTL5000_I2S_MODE_I2S_LJ << SGTL5000_I2S_MODE_SHIFT;
  break;
 case 128:
  i2sctl |= SGTL5000_I2S_MODE_RJ << SGTL5000_I2S_MODE_SHIFT;
  i2sctl |= SGTL5000_I2S_LRPOL;
  break;
 case 130:
  i2sctl |= SGTL5000_I2S_MODE_I2S_LJ << SGTL5000_I2S_MODE_SHIFT;
  i2sctl |= SGTL5000_I2S_LRALIGN;
  break;
 default:
  return -EINVAL;
 }

 sgtl5000->fmt = fmt & SND_SOC_DAIFMT_FORMAT_MASK;


 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 129:
  break;
 case 131:
  i2sctl |= SGTL5000_I2S_SCLK_INV;
  break;
 default:
  return -EINVAL;
 }

 snd_soc_component_write(component, SGTL5000_CHIP_I2S_CTRL, i2sctl);

 return 0;
}
