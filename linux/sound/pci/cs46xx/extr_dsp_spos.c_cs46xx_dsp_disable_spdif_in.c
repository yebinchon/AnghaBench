
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cs46xx {int (* amplifier_ctrl ) (struct snd_cs46xx*,int) ;int (* active_ctrl ) (struct snd_cs46xx*,int) ;int spos_mutex; struct dsp_spos_instance* dsp_spos_instance; } ;
struct dsp_spos_instance {scalar_t__ spdif_status_in; int spdif_in_src; int * asynch_rx_scb; } ;


 int EINVAL ;
 int cs46xx_dsp_remove_scb (struct snd_cs46xx*,int *) ;
 int cs46xx_src_unlink (struct snd_cs46xx*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ snd_BUG_ON (int) ;
 int stub1 (struct snd_cs46xx*,int) ;
 int stub2 (struct snd_cs46xx*,int) ;

int cs46xx_dsp_disable_spdif_in (struct snd_cs46xx *chip)
{
 struct dsp_spos_instance * ins = chip->dsp_spos_instance;

 if (snd_BUG_ON(!ins->asynch_rx_scb))
  return -EINVAL;
 if (snd_BUG_ON(!ins->spdif_in_src))
  return -EINVAL;

 mutex_lock(&chip->spos_mutex);


 cs46xx_dsp_remove_scb (chip,ins->asynch_rx_scb);
 ins->asynch_rx_scb = ((void*)0);

 cs46xx_src_unlink(chip,ins->spdif_in_src);


 ins->spdif_status_in = 0;
 mutex_unlock(&chip->spos_mutex);


 chip->active_ctrl(chip, -1);
 chip->amplifier_ctrl(chip, -1);

 return 0;
}
