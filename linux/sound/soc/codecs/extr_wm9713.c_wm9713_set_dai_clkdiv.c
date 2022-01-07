
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int AC97_CENTER_LFE_MASTER ;
 int AC97_HANDSET_RATE ;
 int AC97_LINE1_LEVEL ;
 int EINVAL ;







 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int wm9713_set_dai_clkdiv(struct snd_soc_dai *codec_dai,
  int div_id, int div)
{
 struct snd_soc_component *component = codec_dai->component;

 switch (div_id) {
 case 129:
  snd_soc_component_update_bits(component, AC97_HANDSET_RATE, 0x0f00, div);
  break;
 case 134:
  snd_soc_component_update_bits(component, AC97_HANDSET_RATE, 0x0002, div);
  break;
 case 133:
  snd_soc_component_update_bits(component, AC97_HANDSET_RATE, 0x0004, div);
  break;
 case 132:
  snd_soc_component_update_bits(component, AC97_HANDSET_RATE, 0x7000, div);
  break;
 case 130:
  snd_soc_component_update_bits(component, AC97_CENTER_LFE_MASTER, 0x0e00, div);
  break;
 case 128:
  snd_soc_component_update_bits(component, AC97_LINE1_LEVEL,
        0x007f, div | 0x60);
  break;
 case 131:
  snd_soc_component_update_bits(component, AC97_LINE1_LEVEL,
        0x007f, div | 0x70);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
