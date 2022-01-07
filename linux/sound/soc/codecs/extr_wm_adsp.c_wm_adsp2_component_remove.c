
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_adsp {int dummy; } ;
struct snd_soc_component {int dummy; } ;


 int wm_adsp2_cleanup_debugfs (struct wm_adsp*) ;

int wm_adsp2_component_remove(struct wm_adsp *dsp, struct snd_soc_component *component)
{
 wm_adsp2_cleanup_debugfs(dsp);

 return 0;
}
