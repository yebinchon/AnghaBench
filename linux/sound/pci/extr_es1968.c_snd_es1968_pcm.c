
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm {int name; scalar_t__ info_flags; int private_free; struct es1968* private_data; } ;
struct TYPE_2__ {int addr; } ;
struct es1968 {struct snd_pcm* pcm; int capture_streams; int playback_streams; int card; TYPE_1__ dma; } ;


 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_es1968_capture_ops ;
 int snd_es1968_init_dmabuf (struct es1968*) ;
 int snd_es1968_pcm_free ;
 int snd_es1968_playback_ops ;
 int snd_pcm_new (int ,char*,int,int ,int ,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int strcpy (int ,char*) ;
 int wave_set_register (struct es1968*,int,int) ;

__attribute__((used)) static int
snd_es1968_pcm(struct es1968 *chip, int device)
{
 struct snd_pcm *pcm;
 int err;


 if ((err = snd_es1968_init_dmabuf(chip)) < 0)
  return err;


 wave_set_register(chip, 0x01FC, chip->dma.addr >> 12);
 wave_set_register(chip, 0x01FD, chip->dma.addr >> 12);
 wave_set_register(chip, 0x01FE, chip->dma.addr >> 12);
 wave_set_register(chip, 0x01FF, chip->dma.addr >> 12);

 if ((err = snd_pcm_new(chip->card, "ESS Maestro", device,
          chip->playback_streams,
          chip->capture_streams, &pcm)) < 0)
  return err;

 pcm->private_data = chip;
 pcm->private_free = snd_es1968_pcm_free;

 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_es1968_playback_ops);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_es1968_capture_ops);

 pcm->info_flags = 0;

 strcpy(pcm->name, "ESS Maestro");

 chip->pcm = pcm;

 return 0;
}
