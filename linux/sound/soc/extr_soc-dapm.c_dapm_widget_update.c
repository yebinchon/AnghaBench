
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_widget_list {unsigned int num_widgets; struct snd_soc_dapm_widget** widgets; } ;
struct snd_soc_dapm_widget {int (* event ) (struct snd_soc_dapm_widget*,int ,int) ;int event_flags; int name; TYPE_1__* dapm; } ;
struct snd_soc_dapm_update {int kcontrol; int val2; int mask2; int reg2; scalar_t__ has_second_set; int val; int mask; int reg; } ;
struct snd_soc_card {struct snd_soc_dapm_update* update; } ;
struct TYPE_2__ {int dev; } ;


 int SND_SOC_DAPM_POST_REG ;
 int SND_SOC_DAPM_PRE_REG ;
 struct snd_soc_dapm_widget_list* dapm_kcontrol_get_wlist (int ) ;
 int dapm_kcontrol_is_powered (int ) ;
 int dev_err (int ,char*,int ,int) ;
 int soc_dapm_update_bits (TYPE_1__*,int ,int ,int ) ;
 int stub1 (struct snd_soc_dapm_widget*,int ,int) ;
 int stub2 (struct snd_soc_dapm_widget*,int ,int) ;

__attribute__((used)) static void dapm_widget_update(struct snd_soc_card *card)
{
 struct snd_soc_dapm_update *update = card->update;
 struct snd_soc_dapm_widget_list *wlist;
 struct snd_soc_dapm_widget *w = ((void*)0);
 unsigned int wi;
 int ret;

 if (!update || !dapm_kcontrol_is_powered(update->kcontrol))
  return;

 wlist = dapm_kcontrol_get_wlist(update->kcontrol);

 for (wi = 0; wi < wlist->num_widgets; wi++) {
  w = wlist->widgets[wi];

  if (w->event && (w->event_flags & SND_SOC_DAPM_PRE_REG)) {
   ret = w->event(w, update->kcontrol, SND_SOC_DAPM_PRE_REG);
   if (ret != 0)
    dev_err(w->dapm->dev, "ASoC: %s DAPM pre-event failed: %d\n",
        w->name, ret);
  }
 }

 if (!w)
  return;

 ret = soc_dapm_update_bits(w->dapm, update->reg, update->mask,
  update->val);
 if (ret < 0)
  dev_err(w->dapm->dev, "ASoC: %s DAPM update failed: %d\n",
   w->name, ret);

 if (update->has_second_set) {
  ret = soc_dapm_update_bits(w->dapm, update->reg2,
        update->mask2, update->val2);
  if (ret < 0)
   dev_err(w->dapm->dev,
    "ASoC: %s DAPM update failed: %d\n",
    w->name, ret);
 }

 for (wi = 0; wi < wlist->num_widgets; wi++) {
  w = wlist->widgets[wi];

  if (w->event && (w->event_flags & SND_SOC_DAPM_POST_REG)) {
   ret = w->event(w, update->kcontrol, SND_SOC_DAPM_POST_REG);
   if (ret != 0)
    dev_err(w->dapm->dev, "ASoC: %s DAPM post-event failed: %d\n",
        w->name, ret);
  }
 }
}
