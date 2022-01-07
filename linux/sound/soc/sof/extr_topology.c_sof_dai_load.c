
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_tplg_pcm {scalar_t__ playback; struct snd_soc_tplg_stream_caps* caps; int capture; int dai_name; } ;
struct snd_sof_pcm {TYPE_2__* stream; struct snd_soc_tplg_pcm pcm; int list; struct snd_sof_dev* sdev; } ;
struct snd_sof_dev {int dev; int pcm_list; } ;
struct snd_soc_tplg_stream_caps {int name; } ;
struct TYPE_3__ {struct snd_sof_pcm* private; } ;
struct snd_soc_dai_driver {TYPE_1__ dobj; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_4__ {int page_table; void* comp_id; } ;


 void* COMP_ID_UNASSIGNED ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int SNDRV_DMA_TYPE_DEV ;
 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int dev_dbg (int ,char*,int ) ;
 int dev_err (int ,char*,...) ;
 struct snd_sof_pcm* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int snd_dma_alloc_pages (int ,int ,int ,int *) ;
 int snd_dma_free_pages (int *) ;
 struct snd_sof_dev* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int spcm_bind (struct snd_sof_dev*,struct snd_sof_pcm*,int) ;

__attribute__((used)) static int sof_dai_load(struct snd_soc_component *scomp, int index,
   struct snd_soc_dai_driver *dai_drv,
   struct snd_soc_tplg_pcm *pcm, struct snd_soc_dai *dai)
{
 struct snd_sof_dev *sdev = snd_soc_component_get_drvdata(scomp);
 struct snd_soc_tplg_stream_caps *caps;
 struct snd_sof_pcm *spcm;
 int stream = SNDRV_PCM_STREAM_PLAYBACK;
 int ret = 0;


 if (!pcm)
  return 0;

 spcm = kzalloc(sizeof(*spcm), GFP_KERNEL);
 if (!spcm)
  return -ENOMEM;

 spcm->sdev = sdev;
 spcm->stream[SNDRV_PCM_STREAM_PLAYBACK].comp_id = COMP_ID_UNASSIGNED;
 spcm->stream[SNDRV_PCM_STREAM_CAPTURE].comp_id = COMP_ID_UNASSIGNED;

 if (pcm) {
  spcm->pcm = *pcm;
  dev_dbg(sdev->dev, "tplg: load pcm %s\n", pcm->dai_name);
 }
 dai_drv->dobj.private = spcm;
 list_add(&spcm->list, &sdev->pcm_list);


 if (!spcm->pcm.playback)
  goto capture;

 caps = &spcm->pcm.caps[stream];


 ret = snd_dma_alloc_pages(SNDRV_DMA_TYPE_DEV, sdev->dev,
      PAGE_SIZE, &spcm->stream[stream].page_table);
 if (ret < 0) {
  dev_err(sdev->dev, "error: can't alloc page table for %s %d\n",
   caps->name, ret);

  return ret;
 }


 ret = spcm_bind(sdev, spcm, stream);
 if (ret) {
  dev_err(sdev->dev,
   "error: can't bind pcm to host\n");
  goto free_playback_tables;
 }

capture:
 stream = SNDRV_PCM_STREAM_CAPTURE;


 if (!spcm->pcm.capture)
  return ret;

 caps = &spcm->pcm.caps[stream];


 ret = snd_dma_alloc_pages(SNDRV_DMA_TYPE_DEV, sdev->dev,
      PAGE_SIZE, &spcm->stream[stream].page_table);
 if (ret < 0) {
  dev_err(sdev->dev, "error: can't alloc page table for %s %d\n",
   caps->name, ret);
  goto free_playback_tables;
 }


 ret = spcm_bind(sdev, spcm, stream);
 if (ret) {
  dev_err(sdev->dev,
   "error: can't bind pcm to host\n");
  snd_dma_free_pages(&spcm->stream[stream].page_table);
  goto free_playback_tables;
 }

 return ret;

free_playback_tables:
 if (spcm->pcm.playback)
  snd_dma_free_pages(&spcm->stream[SNDRV_PCM_STREAM_PLAYBACK].page_table);

 return ret;
}
