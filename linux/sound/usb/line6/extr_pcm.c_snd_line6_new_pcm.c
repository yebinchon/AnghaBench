
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_line6 {TYPE_1__* properties; int card; } ;
struct snd_pcm {int name; } ;
struct TYPE_2__ {scalar_t__ name; } ;


 int GFP_KERNEL ;
 int SNDRV_DMA_TYPE_CONTINUOUS ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_dma_continuous_data (int ) ;
 int snd_line6_capture_ops ;
 int snd_line6_playback_ops ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int) ;
 int snd_pcm_new (int ,char*,int ,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int strcpy (int ,scalar_t__) ;

__attribute__((used)) static int snd_line6_new_pcm(struct usb_line6 *line6, struct snd_pcm **pcm_ret)
{
 struct snd_pcm *pcm;
 int err;

 err = snd_pcm_new(line6->card, (char *)line6->properties->name,
     0, 1, 1, pcm_ret);
 if (err < 0)
  return err;
 pcm = *pcm_ret;
 strcpy(pcm->name, line6->properties->name);


 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK,
   &snd_line6_playback_ops);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_line6_capture_ops);


 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_CONTINUOUS,
           snd_dma_continuous_data
           (GFP_KERNEL), 64 * 1024,
           128 * 1024);
 return 0;
}
