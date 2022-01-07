
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cs46xx {int spos_mutex; struct dsp_spos_instance* dsp_spos_instance; } ;
struct dsp_spos_instance {int pcm_input; int ref_snoop_scb; } ;


 int EINVAL ;
 int PCMSERIALIN_PCM_SCB_ADDR ;
 int cs46xx_add_record_source (struct snd_cs46xx*,int ,int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ snd_BUG_ON (int) ;

int cs46xx_dsp_enable_pcm_capture (struct snd_cs46xx *chip)
{
 struct dsp_spos_instance * ins = chip->dsp_spos_instance;

 if (snd_BUG_ON(ins->pcm_input))
  return -EINVAL;
 if (snd_BUG_ON(!ins->ref_snoop_scb))
  return -EINVAL;

 mutex_lock(&chip->spos_mutex);
 ins->pcm_input = cs46xx_add_record_source(chip,ins->ref_snoop_scb,PCMSERIALIN_PCM_SCB_ADDR,
                                                  "PCMSerialInput_Wave");
 mutex_unlock(&chip->spos_mutex);

 return 0;
}
