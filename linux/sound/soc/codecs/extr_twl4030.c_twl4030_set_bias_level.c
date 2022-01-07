
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 int twl4030_codec_enable (struct snd_soc_component*,int) ;

__attribute__((used)) static int twl4030_set_bias_level(struct snd_soc_component *component,
      enum snd_soc_bias_level level)
{
 switch (level) {
 case 130:
  break;
 case 129:
  break;
 case 128:
  if (snd_soc_component_get_bias_level(component) == 131)
   twl4030_codec_enable(component, 1);
  break;
 case 131:
  twl4030_codec_enable(component, 0);
  break;
 }

 return 0;
}
