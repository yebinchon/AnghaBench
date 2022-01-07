
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sh_dac {int card; } ;
struct snd_pcm {int name; struct snd_sh_dac* private_data; } ;


 int GFP_KERNEL ;
 int SNDRV_DMA_TYPE_CONTINUOUS ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_dma_continuous_data (int ) ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int) ;
 int snd_pcm_new (int ,char*,int,int,int ,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int snd_sh_dac_pcm_ops ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_sh_dac_pcm(struct snd_sh_dac *chip, int device)
{
 int err;
 struct snd_pcm *pcm;


 err = snd_pcm_new(chip->card, "SH_DAC PCM", device, 1, 0, &pcm);
 if (err < 0)
  return err;

 pcm->private_data = chip;
 strcpy(pcm->name, "SH_DAC PCM");
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_sh_dac_pcm_ops);


 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_CONTINUOUS,
       snd_dma_continuous_data(GFP_KERNEL),
       48 * 1024,
       48 * 1024);

 return 0;
}
