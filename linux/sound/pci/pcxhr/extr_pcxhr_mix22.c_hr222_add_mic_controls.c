
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcxhr {int card; TYPE_1__* mgr; } ;
struct TYPE_2__ {int board_has_mic; } ;


 int hr222_control_mic_boost ;
 int hr222_control_mic_level ;
 int hr222_phantom_power_switch ;
 int snd_ctl_add (int ,int ) ;
 int snd_ctl_new1 (int *,struct snd_pcxhr*) ;

int hr222_add_mic_controls(struct snd_pcxhr *chip)
{
 int err;
 if (!chip->mgr->board_has_mic)
  return 0;


 err = snd_ctl_add(chip->card, snd_ctl_new1(&hr222_control_mic_level,
         chip));
 if (err < 0)
  return err;

 err = snd_ctl_add(chip->card, snd_ctl_new1(&hr222_control_mic_boost,
         chip));
 if (err < 0)
  return err;

 err = snd_ctl_add(chip->card, snd_ctl_new1(&hr222_phantom_power_switch,
         chip));
 return err;
}
