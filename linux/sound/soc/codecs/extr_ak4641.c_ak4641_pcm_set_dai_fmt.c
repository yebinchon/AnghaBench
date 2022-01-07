
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int AK4641_BTIF ;
 int EINVAL ;


 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;


 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int ak4641_pcm_set_dai_fmt(struct snd_soc_dai *codec_dai,
      unsigned int fmt)
{
 struct snd_soc_component *component = codec_dai->component;
 u8 btif;
 int ret;


 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 129:
  btif = (0x3 << 5);
  break;
 case 128:
  btif = (0x2 << 5);
  break;
 case 131:
  btif = (0x0 << 5);
  break;
 case 130:
  btif = (0x1 << 5);
  break;
 default:
  return -EINVAL;
 }

 ret = snd_soc_component_update_bits(component, AK4641_BTIF, (0x3 << 5), btif);
 if (ret < 0)
  return ret;

 return 0;
}
