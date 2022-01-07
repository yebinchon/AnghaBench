
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_widget {int connected; int force; TYPE_1__* dapm; } ;
struct snd_soc_dapm_context {int dev; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 struct snd_soc_dapm_widget* dapm_find_widget (struct snd_soc_dapm_context*,char const*,int) ;
 int dapm_mark_dirty (struct snd_soc_dapm_widget*,char*) ;
 int dapm_widget_invalidate_input_paths (struct snd_soc_dapm_widget*) ;
 int dapm_widget_invalidate_output_paths (struct snd_soc_dapm_widget*) ;
 int dev_dbg (int ,char*,char const*) ;
 int dev_err (int ,char*,char const*) ;

int snd_soc_dapm_force_enable_pin_unlocked(struct snd_soc_dapm_context *dapm,
      const char *pin)
{
 struct snd_soc_dapm_widget *w = dapm_find_widget(dapm, pin, 1);

 if (!w) {
  dev_err(dapm->dev, "ASoC: unknown pin %s\n", pin);
  return -EINVAL;
 }

 dev_dbg(w->dapm->dev, "ASoC: force enable pin %s\n", pin);
 if (!w->connected) {




  dapm_widget_invalidate_input_paths(w);
  dapm_widget_invalidate_output_paths(w);
  w->connected = 1;
 }
 w->force = 1;
 dapm_mark_dirty(w, "force enable");

 return 0;
}
