
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_2__* dai_link; } ;
struct snd_soc_dapm_widget {int num_kcontrols; struct snd_kcontrol** kcontrols; TYPE_3__* kcontrol_news; int name; struct snd_soc_pcm_runtime* priv; struct snd_soc_dapm_context* dapm; } ;
struct snd_soc_dapm_context {int dev; TYPE_1__* card; } ;
struct snd_kcontrol {struct snd_soc_dapm_widget* private_data; } ;
struct snd_card {int dummy; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_5__ {int num_params; } ;
struct TYPE_4__ {struct snd_card* snd_card; } ;


 int dev_err (int ,char*,int ,int ,int) ;
 int snd_ctl_add (struct snd_card*,struct snd_kcontrol*) ;
 struct snd_kcontrol* snd_soc_cnew (TYPE_3__*,struct snd_soc_dapm_widget*,int ,int *) ;

__attribute__((used)) static int dapm_new_dai_link(struct snd_soc_dapm_widget *w)
{
 int i, ret;
 struct snd_kcontrol *kcontrol;
 struct snd_soc_dapm_context *dapm = w->dapm;
 struct snd_card *card = dapm->card->snd_card;
 struct snd_soc_pcm_runtime *rtd = w->priv;


 if (rtd->dai_link->num_params <= 1)
  return 0;


 for (i = 0; i < w->num_kcontrols; i++) {
  kcontrol = snd_soc_cnew(&w->kcontrol_news[i], w,
     w->name, ((void*)0));
  ret = snd_ctl_add(card, kcontrol);
  if (ret < 0) {
   dev_err(dapm->dev,
    "ASoC: failed to add widget %s dapm kcontrol %s: %d\n",
    w->name, w->kcontrol_news[i].name, ret);
   return ret;
  }
  kcontrol->private_data = w;
  w->kcontrols[i] = kcontrol;
 }

 return 0;
}
