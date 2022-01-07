
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_mixart {TYPE_1__* mgr; } ;
struct TYPE_2__ {scalar_t__ board_type; } ;


 scalar_t__ MIXART_DAUGHTER_TYPE_AES ;
 int snd_mixart_pcm_analog (struct snd_mixart*) ;
 int snd_mixart_pcm_digital (struct snd_mixart*) ;

int snd_mixart_create_pcm(struct snd_mixart* chip)
{
 int err;

 err = snd_mixart_pcm_analog(chip);
 if (err < 0)
  return err;

 if(chip->mgr->board_type == MIXART_DAUGHTER_TYPE_AES) {

  err = snd_mixart_pcm_digital(chip);
  if (err < 0)
   return err;
 }
 return err;
}
