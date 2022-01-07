
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cs46xx {int spos_mutex; struct dsp_spos_instance* dsp_spos_instance; } ;
struct dsp_spos_instance {int * pcm_input; } ;


 int EINVAL ;
 int cs46xx_dsp_remove_scb (struct snd_cs46xx*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ snd_BUG_ON (int) ;

int cs46xx_dsp_disable_pcm_capture (struct snd_cs46xx *chip)
{
 struct dsp_spos_instance * ins = chip->dsp_spos_instance;

 if (snd_BUG_ON(!ins->pcm_input))
  return -EINVAL;

 mutex_lock(&chip->spos_mutex);
 cs46xx_dsp_remove_scb (chip,ins->pcm_input);
 ins->pcm_input = ((void*)0);
 mutex_unlock(&chip->spos_mutex);

 return 0;
}
