
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_akm4xxx {int num_dacs; unsigned char total_regs; } ;


 int snd_akm4xxx_get (struct snd_akm4xxx*,unsigned int,unsigned char) ;
 int snd_akm4xxx_write (struct snd_akm4xxx*,unsigned int,unsigned char,int) ;

__attribute__((used)) static void ak4381_reset(struct snd_akm4xxx *ak, int state)
{
 unsigned int chip;
 unsigned char reg;
 for (chip = 0; chip < ak->num_dacs/2; chip++) {
  snd_akm4xxx_write(ak, chip, 0x00, state ? 0x0c : 0x0f);
  if (state)
   continue;
  for (reg = 0x01; reg < ak->total_regs; reg++)
   snd_akm4xxx_write(ak, chip, reg,
       snd_akm4xxx_get(ak, chip, reg));
 }
}
