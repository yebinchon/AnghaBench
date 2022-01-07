
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;




 int TWL4030_AIF_EN ;
 int TWL4030_REG_AUDIO_IF ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int twl4030_apll_enable (struct snd_soc_component*,int) ;
 int twl4030_read (struct snd_soc_component*,int ) ;
 int twl4030_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int aif_event(struct snd_soc_dapm_widget *w,
       struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 u8 audio_if;

 audio_if = twl4030_read(component, TWL4030_REG_AUDIO_IF);
 switch (event) {
 case 128:


  twl4030_apll_enable(component, 1);

  twl4030_write(component, TWL4030_REG_AUDIO_IF,
         audio_if | TWL4030_AIF_EN);
  break;
 case 129:

  twl4030_write(component, TWL4030_REG_AUDIO_IF,
         audio_if & ~TWL4030_AIF_EN);
  twl4030_apll_enable(component, 0);
  break;
 }
 return 0;
}
