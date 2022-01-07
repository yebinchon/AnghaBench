
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vx_core {unsigned int audio_outs; unsigned int audio_ins; struct snd_pcm** pcm; TYPE_2__* card; TYPE_1__* hw; } ;
struct snd_pcm {int nonatomic; int name; scalar_t__ info_flags; int private_free; struct vx_core* private_data; } ;
struct TYPE_4__ {int shortname; } ;
struct TYPE_3__ {unsigned int num_codecs; } ;


 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_pcm_new (TYPE_2__*,char*,unsigned int,unsigned int,unsigned int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int snd_vx_pcm_free ;
 int strcpy (int ,int ) ;
 int vx_init_audio_io (struct vx_core*) ;
 int vx_pcm_capture_ops ;
 int vx_pcm_playback_ops ;

int snd_vx_pcm_new(struct vx_core *chip)
{
 struct snd_pcm *pcm;
 unsigned int i;
 int err;

 if ((err = vx_init_audio_io(chip)) < 0)
  return err;

 for (i = 0; i < chip->hw->num_codecs; i++) {
  unsigned int outs, ins;
  outs = chip->audio_outs > i * 2 ? 1 : 0;
  ins = chip->audio_ins > i * 2 ? 1 : 0;
  if (! outs && ! ins)
   break;
  err = snd_pcm_new(chip->card, "VX PCM", i,
      outs, ins, &pcm);
  if (err < 0)
   return err;
  if (outs)
   snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &vx_pcm_playback_ops);
  if (ins)
   snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &vx_pcm_capture_ops);

  pcm->private_data = chip;
  pcm->private_free = snd_vx_pcm_free;
  pcm->info_flags = 0;
  pcm->nonatomic = 1;
  strcpy(pcm->name, chip->card->shortname);
  chip->pcm[i] = pcm;
 }

 return 0;
}
