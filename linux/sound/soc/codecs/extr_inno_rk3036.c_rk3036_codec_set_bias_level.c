
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int INNO_R06 ;
 int INNO_R06_DAC_DISCHARGE ;
 int INNO_R06_DAC_PRECHARGE ;
 int INNO_R10 ;
 int INNO_R10_MAX_CUR ;


 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static int rk3036_codec_set_bias_level(struct snd_soc_component *component,
           enum snd_soc_bias_level level)
{
 switch (level) {
 case 128:

  snd_soc_component_write(component, INNO_R10, INNO_R10_MAX_CUR);

  snd_soc_component_write(component, INNO_R06, INNO_R06_DAC_PRECHARGE);

  break;

 case 129:

  snd_soc_component_write(component, INNO_R10, INNO_R10_MAX_CUR);

  snd_soc_component_write(component, INNO_R06, INNO_R06_DAC_DISCHARGE);

  break;
 default:
  break;
 }

 return 0;
}
