
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm {int device; TYPE_1__* card; } ;
struct TYPE_2__ {int number; } ;


 int SNDRV_OSS_DEVICE_TYPE_PCM ;
 int pcm_err (struct snd_pcm*,char*,int ,int ) ;
 int snd_pcm_oss_f_reg ;
 scalar_t__ snd_register_oss_device (int ,TYPE_1__*,int,int *,struct snd_pcm*) ;

__attribute__((used)) static void register_oss_dsp(struct snd_pcm *pcm, int index)
{
 if (snd_register_oss_device(SNDRV_OSS_DEVICE_TYPE_PCM,
        pcm->card, index, &snd_pcm_oss_f_reg,
        pcm) < 0) {
  pcm_err(pcm, "unable to register OSS PCM device %i:%i\n",
      pcm->card->number, pcm->device);
 }
}
