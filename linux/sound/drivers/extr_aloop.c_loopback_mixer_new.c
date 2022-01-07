
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm {TYPE_1__* streams; } ;
struct TYPE_4__ {int device; int subdevice; } ;
struct snd_kcontrol {TYPE_2__ id; } ;
struct snd_card {int mixername; } ;
struct loopback_setup {int notify; int rate; int channels; TYPE_2__ channels_id; TYPE_2__ rate_id; TYPE_2__ format_id; TYPE_2__ active_id; int format; int rate_shift; } ;
struct loopback {struct loopback_setup** setup; struct snd_pcm** pcm; struct snd_card* card; } ;
struct TYPE_3__ {int substream_count; } ;



 int ARRAY_SIZE (int *) ;

 int ENOMEM ;

 int NO_PITCH ;

 int SNDRV_PCM_FORMAT_S16_LE ;
 size_t SNDRV_PCM_STREAM_CAPTURE ;
 int * loopback_controls ;
 int snd_ctl_add (struct snd_card*,struct snd_kcontrol*) ;
 struct snd_kcontrol* snd_ctl_new1 (int *,struct loopback*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int loopback_mixer_new(struct loopback *loopback, int notify)
{
 struct snd_card *card = loopback->card;
 struct snd_pcm *pcm;
 struct snd_kcontrol *kctl;
 struct loopback_setup *setup;
 int err, dev, substr, substr_count, idx;

 strcpy(card->mixername, "Loopback Mixer");
 for (dev = 0; dev < 2; dev++) {
  pcm = loopback->pcm[dev];
  substr_count =
      pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream_count;
  for (substr = 0; substr < substr_count; substr++) {
   setup = &loopback->setup[substr][dev];
   setup->notify = notify;
   setup->rate_shift = NO_PITCH;
   setup->format = SNDRV_PCM_FORMAT_S16_LE;
   setup->rate = 48000;
   setup->channels = 2;
   for (idx = 0; idx < ARRAY_SIZE(loopback_controls);
         idx++) {
    kctl = snd_ctl_new1(&loopback_controls[idx],
          loopback);
    if (!kctl)
     return -ENOMEM;
    kctl->id.device = dev;
    kctl->id.subdevice = substr;
    switch (idx) {
    case 131:
     setup->active_id = kctl->id;
     break;
    case 129:
     setup->format_id = kctl->id;
     break;
    case 128:
     setup->rate_id = kctl->id;
     break;
    case 130:
     setup->channels_id = kctl->id;
     break;
    default:
     break;
    }
    err = snd_ctl_add(card, kctl);
    if (err < 0)
     return err;
   }
  }
 }
 return 0;
}
