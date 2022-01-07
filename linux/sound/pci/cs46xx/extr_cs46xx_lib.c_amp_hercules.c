
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_cs46xx {int amplifier; TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int BA0_EGPIODR ;
 int BA0_EGPIOPTR ;
 int EGPIODR_GPOE2 ;
 int EGPIOPTR_GPPT2 ;
 int dev_dbg (int ,char*) ;
 int snd_cs46xx_peekBA0 (struct snd_cs46xx*,int ) ;
 int snd_cs46xx_pokeBA0 (struct snd_cs46xx*,int ,int) ;

__attribute__((used)) static void amp_hercules(struct snd_cs46xx *chip, int change)
{
 int old = chip->amplifier;
 int val1 = snd_cs46xx_peekBA0(chip, BA0_EGPIODR);
 int val2 = snd_cs46xx_peekBA0(chip, BA0_EGPIOPTR);

 chip->amplifier += change;
 if (chip->amplifier && !old) {
  dev_dbg(chip->card->dev, "Hercules amplifier ON\n");

  snd_cs46xx_pokeBA0(chip, BA0_EGPIODR,
       EGPIODR_GPOE2 | val1);
  snd_cs46xx_pokeBA0(chip, BA0_EGPIOPTR,
       EGPIOPTR_GPPT2 | val2);
 } else if (old && !chip->amplifier) {
  dev_dbg(chip->card->dev, "Hercules amplifier OFF\n");
  snd_cs46xx_pokeBA0(chip, BA0_EGPIODR, val1 & ~EGPIODR_GPOE2);
  snd_cs46xx_pokeBA0(chip, BA0_EGPIOPTR, val2 & ~EGPIOPTR_GPPT2);
 }
}
