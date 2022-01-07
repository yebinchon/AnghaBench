
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int AK4641_MODE1 ;
 int EINVAL ;
 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;


 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int ak4641_i2s_set_dai_fmt(struct snd_soc_dai *codec_dai,
  unsigned int fmt)
{
 struct snd_soc_component *component = codec_dai->component;
 u8 mode1 = 0;


 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 129:
  mode1 = 0x02;
  break;
 case 128:
  mode1 = 0x01;
  break;
 default:
  return -EINVAL;
 }

 return snd_soc_component_write(component, AK4641_MODE1, mode1);
}
