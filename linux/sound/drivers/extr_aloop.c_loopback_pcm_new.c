
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm {int name; scalar_t__ info_flags; struct loopback* private_data; } ;
struct loopback {struct snd_pcm** pcm; int card; } ;


 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int loopback_pcm_ops ;
 int snd_pcm_new (int ,char*,int,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int loopback_pcm_new(struct loopback *loopback,
       int device, int substreams)
{
 struct snd_pcm *pcm;
 int err;

 err = snd_pcm_new(loopback->card, "Loopback PCM", device,
     substreams, substreams, &pcm);
 if (err < 0)
  return err;
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &loopback_pcm_ops);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &loopback_pcm_ops);

 pcm->private_data = loopback;
 pcm->info_flags = 0;
 strcpy(pcm->name, "Loopback PCM");

 loopback->pcm[device] = pcm;
 return 0;
}
