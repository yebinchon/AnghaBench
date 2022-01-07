
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct oxygen {scalar_t__ dac_mute; } ;


 int CS4398_MUTEP_LOW ;
 int CS4398_MUTE_A ;
 int CS4398_MUTE_B ;
 int CS4398_PAMUTE ;
 int cs4398_write_cached (struct oxygen*,int,int) ;
 int update_cs4362a_volumes (struct oxygen*) ;

__attribute__((used)) static void update_cs43xx_mute(struct oxygen *chip)
{
 u8 reg;

 reg = CS4398_MUTEP_LOW | CS4398_PAMUTE;
 if (chip->dac_mute)
  reg |= CS4398_MUTE_B | CS4398_MUTE_A;
 cs4398_write_cached(chip, 4, reg);
 update_cs4362a_volumes(chip);
}
