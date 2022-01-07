
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_adsp {char* name; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int ARRAY_SIZE (char*) ;
 int snd_soc_component_disable_pin (struct snd_soc_component*,char*) ;
 int snprintf (char*,int ,char*,char*) ;
 int wm_adsp2_init_debugfs (struct wm_adsp*,struct snd_soc_component*) ;

int wm_adsp2_component_probe(struct wm_adsp *dsp, struct snd_soc_component *component)
{
 char preload[32];

 snprintf(preload, ARRAY_SIZE(preload), "%s Preload", dsp->name);
 snd_soc_component_disable_pin(component, preload);

 wm_adsp2_init_debugfs(dsp, component);

 dsp->component = component;

 return 0;
}
