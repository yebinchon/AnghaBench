
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_ops {int dummy; } ;
struct snd_pcm {int name; scalar_t__ info_flags; struct snd_dummy* private_data; } ;
struct snd_dummy {struct snd_pcm* pcm; int card; } ;


 int GFP_KERNEL ;
 int SNDRV_DMA_TYPE_CONTINUOUS ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 struct snd_pcm_ops dummy_pcm_ops ;
 struct snd_pcm_ops dummy_pcm_ops_no_buf ;
 scalar_t__ fake_buffer ;
 int snd_dma_continuous_data (int ) ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int ,int) ;
 int snd_pcm_new (int ,char*,int,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,struct snd_pcm_ops*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_card_dummy_pcm(struct snd_dummy *dummy, int device,
         int substreams)
{
 struct snd_pcm *pcm;
 struct snd_pcm_ops *ops;
 int err;

 err = snd_pcm_new(dummy->card, "Dummy PCM", device,
          substreams, substreams, &pcm);
 if (err < 0)
  return err;
 dummy->pcm = pcm;
 if (fake_buffer)
  ops = &dummy_pcm_ops_no_buf;
 else
  ops = &dummy_pcm_ops;
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, ops);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, ops);
 pcm->private_data = dummy;
 pcm->info_flags = 0;
 strcpy(pcm->name, "Dummy PCM");
 if (!fake_buffer) {
  snd_pcm_lib_preallocate_pages_for_all(pcm,
   SNDRV_DMA_TYPE_CONTINUOUS,
   snd_dma_continuous_data(GFP_KERNEL),
   0, 64*1024);
 }
 return 0;
}
