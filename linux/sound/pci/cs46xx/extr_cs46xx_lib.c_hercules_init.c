
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cs46xx {int dummy; } ;


 int BA0_EGPIODR ;
 int BA0_EGPIOPTR ;
 int EGPIODR_GPOE0 ;
 int snd_cs46xx_pokeBA0 (struct snd_cs46xx*,int ,int ) ;

__attribute__((used)) static void hercules_init(struct snd_cs46xx *chip)
{

 snd_cs46xx_pokeBA0(chip, BA0_EGPIODR, EGPIODR_GPOE0);
 snd_cs46xx_pokeBA0(chip, BA0_EGPIOPTR, EGPIODR_GPOE0);
}
