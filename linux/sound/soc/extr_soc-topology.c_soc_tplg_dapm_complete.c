
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_tplg {int dev; TYPE_1__* comp; } ;
struct snd_soc_card {int instantiated; } ;
struct TYPE_2__ {struct snd_soc_card* card; } ;


 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*) ;
 int snd_soc_dapm_new_widgets (struct snd_soc_card*) ;

__attribute__((used)) static int soc_tplg_dapm_complete(struct soc_tplg *tplg)
{
 struct snd_soc_card *card = tplg->comp->card;
 int ret;




 if (!card || !card->instantiated) {
  dev_warn(tplg->dev, "ASoC: Parent card not yet available,"
   " widget card binding deferred\n");
  return 0;
 }

 ret = snd_soc_dapm_new_widgets(card);
 if (ret < 0)
  dev_err(tplg->dev, "ASoC: failed to create new widgets %d\n",
   ret);

 return 0;
}
