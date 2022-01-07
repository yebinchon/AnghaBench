
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;




 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int vmid_dereference (struct snd_soc_component*) ;
 int vmid_reference (struct snd_soc_component*) ;

__attribute__((used)) static int vmid_event(struct snd_soc_dapm_widget *w,
        struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);

 switch (event) {
 case 128:
  vmid_reference(component);
  break;

 case 129:
  vmid_dereference(component);
  break;
 }

 return 0;
}
