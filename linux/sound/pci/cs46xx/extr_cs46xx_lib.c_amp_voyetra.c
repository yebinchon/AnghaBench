
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_cs46xx {int amplifier; TYPE_1__* eapd_switch; int card; } ;
struct TYPE_2__ {int id; } ;


 int AC97_POWERDOWN ;
 int CS46XX_PRIMARY_CODEC_INDEX ;
 int SNDRV_CTL_EVENT_MASK_VALUE ;
 int snd_cs46xx_codec_read (struct snd_cs46xx*,int ,int ) ;
 int snd_cs46xx_codec_write (struct snd_cs46xx*,int ,int,int ) ;
 int snd_ctl_notify (int ,int ,int *) ;
 int voyetra_setup_eapd_slot (struct snd_cs46xx*) ;

__attribute__((used)) static void amp_voyetra(struct snd_cs46xx *chip, int change)
{






 int oval, val;

 chip->amplifier += change;
 oval = snd_cs46xx_codec_read(chip, AC97_POWERDOWN,
         CS46XX_PRIMARY_CODEC_INDEX);
 val = oval;
 if (chip->amplifier) {

  val |= 0x8000;
 } else {

  val &= ~0x8000;
 }
 if (val != oval) {
  snd_cs46xx_codec_write(chip, AC97_POWERDOWN, val,
           CS46XX_PRIMARY_CODEC_INDEX);
  if (chip->eapd_switch)
   snd_ctl_notify(chip->card, SNDRV_CTL_EVENT_MASK_VALUE,
           &chip->eapd_switch->id);
 }






}
