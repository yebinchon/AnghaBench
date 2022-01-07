
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {int dev; TYPE_1__* component; } ;
struct snd_pcm_substream {int runtime; } ;
struct axg_tdm_stream {int mask; } ;
struct axg_tdm_iface {int rate; } ;
struct TYPE_2__ {scalar_t__ active; } ;


 int EINVAL ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int axg_tdm_slots_total (int ) ;
 int dev_err (int ,char*) ;
 int snd_pcm_hw_constraint_single (int ,int ,int ) ;
 struct axg_tdm_stream* snd_soc_dai_get_dma_data (struct snd_soc_dai*,struct snd_pcm_substream*) ;
 struct axg_tdm_iface* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int axg_tdm_iface_startup(struct snd_pcm_substream *substream,
     struct snd_soc_dai *dai)
{
 struct axg_tdm_iface *iface = snd_soc_dai_get_drvdata(dai);
 struct axg_tdm_stream *ts =
  snd_soc_dai_get_dma_data(dai, substream);
 int ret;

 if (!axg_tdm_slots_total(ts->mask)) {
  dev_err(dai->dev, "interface has not slots\n");
  return -EINVAL;
 }


 if (dai->component->active) {
  ret = snd_pcm_hw_constraint_single(substream->runtime,
         SNDRV_PCM_HW_PARAM_RATE,
         iface->rate);
  if (ret < 0) {
   dev_err(dai->dev,
    "can't set iface rate constraint\n");
   return ret;
  }
 }

 return 0;
}
