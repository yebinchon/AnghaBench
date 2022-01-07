
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ali {TYPE_1__* card; scalar_t__ spdif_support; } ;
struct TYPE_2__ {int dev; } ;


 int ALI_CHANNELS ;
 int ALI_GLOBAL_CONTROL ;
 int ALI_PCM_IN_CHANNEL ;
 int ALI_REG (struct snd_ali*,int ) ;
 int ALI_SPDIF_IN_CHANNEL ;
 int ALI_SPDIF_IN_SUPPORT ;
 int ALI_SPDIF_OUT_CHANNEL ;
 int ALI_SPDIF_OUT_CH_ENABLE ;
 int dev_dbg (int ,char*,char*) ;
 int dev_err (int ,char*) ;
 int inl (int ) ;
 int snd_ali_alloc_pcm_channel (struct snd_ali*,int) ;

__attribute__((used)) static int snd_ali_find_free_channel(struct snd_ali * codec, int rec)
{
 int idx;
 int result = -1;

 dev_dbg(codec->card->dev,
  "find_free_channel: for %s\n", rec ? "rec" : "pcm");


 if (rec) {
  if (codec->spdif_support &&
      (inl(ALI_REG(codec, ALI_GLOBAL_CONTROL)) &
       ALI_SPDIF_IN_SUPPORT))
   idx = ALI_SPDIF_IN_CHANNEL;
  else
   idx = ALI_PCM_IN_CHANNEL;

  result = snd_ali_alloc_pcm_channel(codec, idx);
  if (result >= 0)
   return result;
  else {
   dev_err(codec->card->dev,
    "ali_find_free_channel: record channel is busy now.\n");
   return -1;
  }
 }


 if (codec->spdif_support &&
     (inl(ALI_REG(codec, ALI_GLOBAL_CONTROL)) &
      ALI_SPDIF_OUT_CH_ENABLE)) {
  idx = ALI_SPDIF_OUT_CHANNEL;
  result = snd_ali_alloc_pcm_channel(codec, idx);
  if (result >= 0)
   return result;
  else
   dev_err(codec->card->dev,
    "ali_find_free_channel: S/PDIF out channel is in busy now.\n");
 }

 for (idx = 0; idx < ALI_CHANNELS; idx++) {
  result = snd_ali_alloc_pcm_channel(codec, idx);
  if (result >= 0)
   return result;
 }
 dev_err(codec->card->dev, "ali_find_free_channel: no free channels.\n");
 return -1;
}
