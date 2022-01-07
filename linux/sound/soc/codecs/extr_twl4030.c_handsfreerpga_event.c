
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;




 int TWL4030_REG_HFR_CTL ;
 int handsfree_ramp (struct snd_soc_component*,int ,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int handsfreerpga_event(struct snd_soc_dapm_widget *w,
          struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);

 switch (event) {
 case 128:
  handsfree_ramp(component, TWL4030_REG_HFR_CTL, 1);
  break;
 case 129:
  handsfree_ramp(component, TWL4030_REG_HFR_CTL, 0);
  break;
 }
 return 0;
}
