
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_sof_pcm {TYPE_1__* stream; } ;
struct snd_sof_dev {int dev; } ;
struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {size_t stream; struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_2__ {int period_elapsed_work; } ;


 int DRV_NAME ;
 int dev_err (int ,char*) ;
 int schedule_work (int *) ;
 struct snd_sof_dev* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;
 struct snd_sof_pcm* snd_sof_find_spcm_dai (struct snd_sof_dev*,struct snd_soc_pcm_runtime*) ;

void snd_sof_pcm_period_elapsed(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_component *component =
  snd_soc_rtdcom_lookup(rtd, DRV_NAME);
 struct snd_sof_dev *sdev = snd_soc_component_get_drvdata(component);
 struct snd_sof_pcm *spcm;

 spcm = snd_sof_find_spcm_dai(sdev, rtd);
 if (!spcm) {
  dev_err(sdev->dev,
   "error: period elapsed for unknown stream!\n");
  return;
 }
 schedule_work(&spcm->stream[substream->stream].period_elapsed_work);
}
