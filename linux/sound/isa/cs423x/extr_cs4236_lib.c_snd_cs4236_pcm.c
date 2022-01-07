
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_wss {TYPE_1__* pcm; } ;
struct TYPE_2__ {int info_flags; } ;


 int SNDRV_PCM_INFO_JOINT_DUPLEX ;
 int snd_wss_pcm (struct snd_wss*,int) ;

int snd_cs4236_pcm(struct snd_wss *chip, int device)
{
 int err;

 err = snd_wss_pcm(chip, device);
 if (err < 0)
  return err;
 chip->pcm->info_flags &= ~SNDRV_PCM_INFO_JOINT_DUPLEX;
 return 0;
}
