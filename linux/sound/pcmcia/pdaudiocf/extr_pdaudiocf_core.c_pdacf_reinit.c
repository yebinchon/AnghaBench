
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pdacf {int * regmap; int ak4117; int suspend_reg_scr; } ;


 int PDAUDIOCF_REG_IER ;
 int PDAUDIOCF_REG_SCR ;
 int PDAUDIOCF_REG_TCR ;
 int pdacf_reg_write (struct snd_pdacf*,int,int ) ;
 int pdacf_reset (struct snd_pdacf*,int ) ;
 int snd_ak4117_reinit (int ) ;

void pdacf_reinit(struct snd_pdacf *chip, int resume)
{
 pdacf_reset(chip, 0);
 if (resume)
  pdacf_reg_write(chip, PDAUDIOCF_REG_SCR, chip->suspend_reg_scr);
 snd_ak4117_reinit(chip->ak4117);
 pdacf_reg_write(chip, PDAUDIOCF_REG_TCR, chip->regmap[PDAUDIOCF_REG_TCR>>1]);
 pdacf_reg_write(chip, PDAUDIOCF_REG_IER, chip->regmap[PDAUDIOCF_REG_IER>>1]);
}
