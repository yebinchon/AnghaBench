
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pmac {int* awacs_reg; TYPE_3__* hp_detect_ctl; int card; TYPE_2__* speaker_sw_ctl; TYPE_1__* master_sw_ctl; struct awacs_amp* mixer_data; scalar_t__ auto_mute; } ;
struct awacs_amp {int dummy; } ;
struct TYPE_6__ {int id; } ;
struct TYPE_5__ {int id; } ;
struct TYPE_4__ {int id; } ;


 int AMP_CH_HD ;
 int AMP_CH_SPK ;
 int MASK_HDMUTE ;
 int MASK_PAROUT1 ;
 int MASK_SPKMUTE ;
 int SNDRV_CTL_EVENT_MASK_VALUE ;
 scalar_t__ imac1 ;
 scalar_t__ imac2 ;
 int snd_ctl_notify (int ,int ,int *) ;
 scalar_t__ snd_pmac_awacs_detect_headphone (struct snd_pmac*) ;
 int snd_pmac_awacs_write_reg (struct snd_pmac*,int,int) ;
 int toggle_amp_mute (struct awacs_amp*,int ,int) ;

__attribute__((used)) static void snd_pmac_awacs_update_automute(struct snd_pmac *chip, int do_notify)
{
 if (chip->auto_mute) {
  {
   int reg = chip->awacs_reg[1]
    | (MASK_HDMUTE | MASK_SPKMUTE);
   if (imac1) {
    reg &= ~MASK_SPKMUTE;
    reg |= MASK_PAROUT1;
   } else if (imac2) {
    reg &= ~MASK_SPKMUTE;
    reg &= ~MASK_PAROUT1;
   }
   if (snd_pmac_awacs_detect_headphone(chip))
    reg &= ~MASK_HDMUTE;
   else if (imac1)
    reg &= ~MASK_PAROUT1;
   else if (imac2)
    reg |= MASK_PAROUT1;
   else
    reg &= ~MASK_SPKMUTE;
   if (do_notify && reg == chip->awacs_reg[1])
    return;
   snd_pmac_awacs_write_reg(chip, 1, reg);
  }
  if (do_notify) {
   snd_ctl_notify(chip->card, SNDRV_CTL_EVENT_MASK_VALUE,
           &chip->master_sw_ctl->id);
   snd_ctl_notify(chip->card, SNDRV_CTL_EVENT_MASK_VALUE,
           &chip->speaker_sw_ctl->id);
   snd_ctl_notify(chip->card, SNDRV_CTL_EVENT_MASK_VALUE,
           &chip->hp_detect_ctl->id);
  }
 }
}
