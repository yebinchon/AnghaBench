
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int shift; int dapm; } ;
struct snd_soc_component {int dummy; } ;


 unsigned int RT5670_ASRC_2 ;
 unsigned int RT5670_ASRC_3 ;
 unsigned int RT5670_ASRC_5 ;
 unsigned int snd_soc_component_read32 (struct snd_soc_component*,unsigned int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int is_using_asrc(struct snd_soc_dapm_widget *source,
    struct snd_soc_dapm_widget *sink)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(source->dapm);
 unsigned int reg, shift, val;

 switch (source->shift) {
 case 0:
  reg = RT5670_ASRC_3;
  shift = 0;
  break;
 case 1:
  reg = RT5670_ASRC_3;
  shift = 4;
  break;
 case 2:
  reg = RT5670_ASRC_5;
  shift = 12;
  break;
 case 3:
  reg = RT5670_ASRC_2;
  shift = 0;
  break;
 case 8:
  reg = RT5670_ASRC_2;
  shift = 4;
  break;
 case 9:
  reg = RT5670_ASRC_2;
  shift = 8;
  break;
 case 10:
  reg = RT5670_ASRC_2;
  shift = 12;
  break;
 default:
  return 0;
 }

 val = (snd_soc_component_read32(component, reg) >> shift) & 0xf;
 switch (val) {
 case 1:
 case 2:
 case 3:
 case 4:
  return 1;
 default:
  return 0;
 }

}
