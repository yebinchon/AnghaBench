
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 unsigned int AUDIO_BCL_INV ;
 unsigned int AUDIO_CFS (int) ;
 unsigned int AUDIO_CFS_INV ;
 unsigned int AUDIO_CSM ;
 unsigned int AUDIO_C_CLK_EN ;
 unsigned int AUDIO_C_RESET ;
 int EINVAL ;





 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;



 unsigned int SND_SOC_DAIFMT_INV_MASK ;
 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;


 int snd_soc_component_update_bits (struct snd_soc_component*,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static int mc13783_set_fmt(struct snd_soc_dai *dai, unsigned int fmt,
   unsigned int reg)
{
 struct snd_soc_component *component = dai->component;
 unsigned int val = 0;
 unsigned int mask = AUDIO_CFS(3) | AUDIO_BCL_INV | AUDIO_CFS_INV |
    AUDIO_CSM | AUDIO_C_CLK_EN | AUDIO_C_RESET;



 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 132:
  val |= AUDIO_CFS(2);
  break;
 case 133:
  val |= AUDIO_CFS(1);
  break;
 default:
  return -EINVAL;
 }


 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 128:
  val |= AUDIO_BCL_INV;
  break;
 case 129:
  val |= AUDIO_BCL_INV | AUDIO_CFS_INV;
  break;
 case 130:
  break;
 case 131:
  val |= AUDIO_CFS_INV;
  break;
 }


 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 137:
  val |= AUDIO_C_CLK_EN;
  break;
 case 134:
  val |= AUDIO_CSM;
  break;
 case 136:
 case 135:
  return -EINVAL;
 }

 val |= AUDIO_C_RESET;

 snd_soc_component_update_bits(component, reg, mask, val);

 return 0;
}
