
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {int dummy; } ;


 int WM8994_RATE_STATUS ;
 int dev_dbg (int ,char*,int ) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int post_ev(struct snd_soc_dapm_widget *w,
     struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 dev_dbg(component->dev, "SRC status: %x\n",
  snd_soc_component_read32(component,
        WM8994_RATE_STATUS));
 return 0;
}
