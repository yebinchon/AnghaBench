
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ioctl; int release; int open; } ;
struct snd_hwdep {TYPE_1__ ops; int name; } ;
struct snd_card {int dummy; } ;
struct TYPE_6__ {int wavefront; } ;
typedef TYPE_2__ snd_wavefront_card_t ;


 scalar_t__ snd_hwdep_new (struct snd_card*,char*,int,struct snd_hwdep**) ;
 scalar_t__ snd_wavefront_detect (TYPE_2__*) ;
 scalar_t__ snd_wavefront_start (int *) ;
 int snd_wavefront_synth_ioctl ;
 int snd_wavefront_synth_open ;
 int snd_wavefront_synth_release ;
 int strcpy (int ,char*) ;

__attribute__((used)) static struct snd_hwdep *snd_wavefront_new_synth(struct snd_card *card,
       int hw_dev,
       snd_wavefront_card_t *acard)
{
 struct snd_hwdep *wavefront_synth;

 if (snd_wavefront_detect (acard) < 0) {
  return ((void*)0);
 }

 if (snd_wavefront_start (&acard->wavefront) < 0) {
  return ((void*)0);
 }

 if (snd_hwdep_new(card, "WaveFront", hw_dev, &wavefront_synth) < 0)
  return ((void*)0);
 strcpy (wavefront_synth->name,
  "WaveFront (ICS2115) wavetable synthesizer");
 wavefront_synth->ops.open = snd_wavefront_synth_open;
 wavefront_synth->ops.release = snd_wavefront_synth_release;
 wavefront_synth->ops.ioctl = snd_wavefront_synth_ioctl;

 return wavefront_synth;
}
