
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_ops {void* open; } ;
struct snd_pcm {struct snd_cmi8330* private_data; int name; } ;
struct snd_cmi8330 {scalar_t__ type; struct snd_pcm* pcm; TYPE_1__* streams; int wss; int sb; } ;
struct snd_card {int dev; } ;
typedef void* snd_pcm_open_callback_t ;
struct TYPE_2__ {struct snd_pcm_ops ops; int private_data; void* open; } ;


 scalar_t__ CMI8329 ;
 size_t CMI_AD_STREAM ;
 size_t CMI_SB_STREAM ;
 int SNDRV_DMA_TYPE_DEV ;
 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;


 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int) ;
 int snd_pcm_new (struct snd_card*,char*,int ,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,size_t,struct snd_pcm_ops*) ;
 struct snd_pcm_ops* snd_sb16dsp_get_pcm_ops (size_t) ;
 struct snd_pcm_ops* snd_wss_get_pcm_ops (size_t) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_cmi8330_pcm(struct snd_card *card, struct snd_cmi8330 *chip)
{
 struct snd_pcm *pcm;
 const struct snd_pcm_ops *ops;
 int err;
 static snd_pcm_open_callback_t cmi_open_callbacks[2] = {
  128,
  129
 };

 if ((err = snd_pcm_new(card, (chip->type == CMI8329) ? "CMI8329" : "CMI8330", 0, 1, 1, &pcm)) < 0)
  return err;
 strcpy(pcm->name, (chip->type == CMI8329) ? "CMI8329" : "CMI8330");
 pcm->private_data = chip;


 ops = snd_sb16dsp_get_pcm_ops(CMI_SB_STREAM);
 chip->streams[CMI_SB_STREAM].ops = *ops;
 chip->streams[CMI_SB_STREAM].open = ops->open;
 chip->streams[CMI_SB_STREAM].ops.open = cmi_open_callbacks[CMI_SB_STREAM];
 chip->streams[CMI_SB_STREAM].private_data = chip->sb;


 ops = snd_wss_get_pcm_ops(CMI_AD_STREAM);
 chip->streams[CMI_AD_STREAM].ops = *ops;
 chip->streams[CMI_AD_STREAM].open = ops->open;
 chip->streams[CMI_AD_STREAM].ops.open = cmi_open_callbacks[CMI_AD_STREAM];
 chip->streams[CMI_AD_STREAM].private_data = chip->wss;

 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &chip->streams[SNDRV_PCM_STREAM_PLAYBACK].ops);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &chip->streams[SNDRV_PCM_STREAM_CAPTURE].ops);

 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV,
           card->dev,
           64*1024, 128*1024);
 chip->pcm = pcm;

 return 0;
}
