
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcxhr {int card; TYPE_1__* mgr; } ;
struct TYPE_2__ {scalar_t__ is_hr_stereo; } ;


 int pcxhr_proc_gpio_read ;
 int pcxhr_proc_gpo_write ;
 int pcxhr_proc_info ;
 int pcxhr_proc_ltc ;
 int pcxhr_proc_sync ;
 int snd_card_ro_proc_new (int ,char*,struct snd_pcxhr*,int ) ;
 int snd_card_rw_proc_new (int ,char*,struct snd_pcxhr*,int ,int ) ;

__attribute__((used)) static void pcxhr_proc_init(struct snd_pcxhr *chip)
{
 snd_card_ro_proc_new(chip->card, "info", chip, pcxhr_proc_info);
 snd_card_ro_proc_new(chip->card, "sync", chip, pcxhr_proc_sync);

 if (chip->mgr->is_hr_stereo)
  snd_card_rw_proc_new(chip->card, "gpio", chip,
         pcxhr_proc_gpio_read,
         pcxhr_proc_gpo_write);
 snd_card_ro_proc_new(chip->card, "ltc", chip, pcxhr_proc_ltc);
}
