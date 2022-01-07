
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pcm_id; } ;
struct snd_sof_pcm {TYPE_3__* stream; scalar_t__* prepared; TYPE_2__ pcm; } ;
struct snd_sof_dev {int dev; } ;
struct snd_soc_pcm_runtime {TYPE_1__* dai_link; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {size_t stream; struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_6__ {int period_elapsed_work; } ;
struct TYPE_4__ {scalar_t__ no_pcm; } ;


 int DRV_NAME ;
 int EINVAL ;
 int cancel_work_sync (int *) ;
 int dev_dbg (int ,char*,int ,size_t) ;
 int dev_err (int ,char*) ;
 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;
 struct snd_sof_dev* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;
 struct snd_sof_pcm* snd_sof_find_spcm_dai (struct snd_sof_dev*,struct snd_soc_pcm_runtime*) ;
 int snd_sof_pcm_platform_hw_free (struct snd_sof_dev*,struct snd_pcm_substream*) ;
 int sof_pcm_dsp_pcm_free (struct snd_pcm_substream*,struct snd_sof_dev*,struct snd_sof_pcm*) ;

__attribute__((used)) static int sof_pcm_hw_free(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_component *component =
  snd_soc_rtdcom_lookup(rtd, DRV_NAME);
 struct snd_sof_dev *sdev = snd_soc_component_get_drvdata(component);
 struct snd_sof_pcm *spcm;
 int ret, err = 0;


 if (rtd->dai_link->no_pcm)
  return 0;

 spcm = snd_sof_find_spcm_dai(sdev, rtd);
 if (!spcm)
  return -EINVAL;

 dev_dbg(sdev->dev, "pcm: free stream %d dir %d\n", spcm->pcm.pcm_id,
  substream->stream);

 if (spcm->prepared[substream->stream]) {
  ret = sof_pcm_dsp_pcm_free(substream, sdev, spcm);
  if (ret < 0)
   err = ret;
 }

 snd_pcm_lib_free_pages(substream);

 cancel_work_sync(&spcm->stream[substream->stream].period_elapsed_work);

 ret = snd_sof_pcm_platform_hw_free(sdev, substream);
 if (ret < 0) {
  dev_err(sdev->dev, "error: platform hw free failed\n");
  err = ret;
 }

 return err;
}
