
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_cs46xx {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int BA0_EGPIODR ;
 int BA0_EGPIOPTR ;
 int EGPIODR_GPOE0 ;
 int dev_dbg (int ,char*) ;
 int snd_cs46xx_pokeBA0 (struct snd_cs46xx*,int ,int ) ;

__attribute__((used)) static void voyetra_mixer_init (struct snd_cs46xx *chip)
{
 dev_dbg(chip->card->dev, "initializing Voyetra mixer\n");


 snd_cs46xx_pokeBA0(chip, BA0_EGPIODR, EGPIODR_GPOE0);
 snd_cs46xx_pokeBA0(chip, BA0_EGPIOPTR, EGPIODR_GPOE0);
}
