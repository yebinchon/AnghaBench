
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int AK4671_BCKP ;
 int AK4671_DIF ;
 int AK4671_DIF_DSP_MODE ;
 int AK4671_DIF_I2S_MODE ;
 int AK4671_DIF_MSB_MODE ;
 int AK4671_FORMAT_SELECT ;
 int AK4671_MSBS ;
 int AK4671_M_S ;
 int AK4671_PLL_MODE_SELECT1 ;
 int EINVAL ;



 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;


 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static int ak4671_set_dai_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct snd_soc_component *component = dai->component;
 u8 mode;
 u8 format;


 mode = snd_soc_component_read32(component, AK4671_PLL_MODE_SELECT1);

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 132:
  mode |= AK4671_M_S;
  break;
 case 131:
  mode &= ~(AK4671_M_S);
  break;
 default:
  return -EINVAL;
 }


 format = snd_soc_component_read32(component, AK4671_FORMAT_SELECT);
 format &= ~AK4671_DIF;

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 129:
  format |= AK4671_DIF_I2S_MODE;
  break;
 case 128:
  format |= AK4671_DIF_MSB_MODE;
  break;
 case 130:
  format |= AK4671_DIF_DSP_MODE;
  format |= AK4671_BCKP;
  format |= AK4671_MSBS;
  break;
 default:
  return -EINVAL;
 }


 snd_soc_component_write(component, AK4671_PLL_MODE_SELECT1, mode);
 snd_soc_component_write(component, AK4671_FORMAT_SELECT, format);

 return 0;
}
