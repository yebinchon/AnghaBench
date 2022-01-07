
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_pcm_runtime {int dev; TYPE_2__* dpcm; int fe_compr; TYPE_1__* dai_link; struct snd_soc_card* card; } ;
struct snd_soc_dapm_widget_list {int num_widgets; TYPE_3__** widgets; } ;
struct snd_soc_card {int dummy; } ;
struct TYPE_6__ {int id; int name; } ;
struct TYPE_5__ {int runtime_update; int runtime; } ;
struct TYPE_4__ {int no_pcm; } ;


 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int SND_SOC_DPCM_UPDATE_BE ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*,int ) ;
 int dpcm_be_connect (struct snd_soc_pcm_runtime*,struct snd_soc_pcm_runtime*,int) ;
 struct snd_soc_pcm_runtime* dpcm_get_be (struct snd_soc_card*,TYPE_3__*,int) ;



__attribute__((used)) static int dpcm_add_paths(struct snd_soc_pcm_runtime *fe, int stream,
 struct snd_soc_dapm_widget_list **list_)
{
 struct snd_soc_card *card = fe->card;
 struct snd_soc_dapm_widget_list *list = *list_;
 struct snd_soc_pcm_runtime *be;
 int i, new = 0, err;


 for (i = 0; i < list->num_widgets; i++) {

  switch (list->widgets[i]->id) {
  case 129:
   if (stream != SNDRV_PCM_STREAM_PLAYBACK)
    continue;
   break;
  case 128:
   if (stream != SNDRV_PCM_STREAM_CAPTURE)
    continue;
   break;
  default:
   continue;
  }


  be = dpcm_get_be(card, list->widgets[i], stream);
  if (!be) {
   dev_err(fe->dev, "ASoC: no BE found for %s\n",
     list->widgets[i]->name);
   continue;
  }


  if (!be->dai_link->no_pcm)
   continue;


  if (!fe->dpcm[stream].runtime && !fe->fe_compr)
   continue;


  err = dpcm_be_connect(fe, be, stream);
  if (err < 0) {
   dev_err(fe->dev, "ASoC: can't connect %s\n",
    list->widgets[i]->name);
   break;
  } else if (err == 0)
   continue;


  be->dpcm[stream].runtime_update = SND_SOC_DPCM_UPDATE_BE;
  new++;
 }

 dev_dbg(fe->dev, "ASoC: found %d new BE paths\n", new);
 return new;
}
