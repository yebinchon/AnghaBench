
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xonar_wm87x6 {struct snd_kcontrol* mic_adcmux_control; struct snd_kcontrol* line_adcmux_control; } ;
struct TYPE_2__ {int name; } ;
struct snd_kcontrol {TYPE_1__ id; } ;
struct oxygen {int card; struct xonar_wm87x6* model_data; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int ENOMEM ;
 int ENXIO ;
 int add_lc_controls (struct oxygen*) ;
 int * ds_controls ;
 int snd_ctl_add (int ,struct snd_kcontrol*) ;
 struct snd_kcontrol* snd_ctl_new1 (int *,struct oxygen*) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int xonar_ds_mixer_init(struct oxygen *chip)
{
 struct xonar_wm87x6 *data = chip->model_data;
 unsigned int i;
 struct snd_kcontrol *ctl;
 int err;

 for (i = 0; i < ARRAY_SIZE(ds_controls); ++i) {
  ctl = snd_ctl_new1(&ds_controls[i], chip);
  if (!ctl)
   return -ENOMEM;
  err = snd_ctl_add(chip->card, ctl);
  if (err < 0)
   return err;
  if (!strcmp(ctl->id.name, "Line Capture Switch"))
   data->line_adcmux_control = ctl;
  else if (!strcmp(ctl->id.name, "Mic Capture Switch"))
   data->mic_adcmux_control = ctl;
 }
 if (!data->line_adcmux_control || !data->mic_adcmux_control)
  return -ENXIO;

 return add_lc_controls(chip);
}
