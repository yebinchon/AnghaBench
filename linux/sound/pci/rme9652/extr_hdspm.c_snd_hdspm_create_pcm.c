
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm {int info_flags; int name; struct hdspm* private_data; } ;
struct snd_card {int dummy; } ;
struct hdspm {int card_name; struct snd_pcm* pcm; } ;


 int SNDRV_PCM_INFO_JOINT_DUPLEX ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_hdspm_ops ;
 int snd_hdspm_preallocate_memory (struct hdspm*) ;
 int snd_pcm_new (struct snd_card*,int ,int ,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int snd_hdspm_create_pcm(struct snd_card *card,
    struct hdspm *hdspm)
{
 struct snd_pcm *pcm;
 int err;

 err = snd_pcm_new(card, hdspm->card_name, 0, 1, 1, &pcm);
 if (err < 0)
  return err;

 hdspm->pcm = pcm;
 pcm->private_data = hdspm;
 strcpy(pcm->name, hdspm->card_name);

 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK,
   &snd_hdspm_ops);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE,
   &snd_hdspm_ops);

 pcm->info_flags = SNDRV_PCM_INFO_JOINT_DUPLEX;

 err = snd_hdspm_preallocate_memory(hdspm);
 if (err < 0)
  return err;

 return 0;
}
