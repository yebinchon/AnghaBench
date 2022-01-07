
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_akm4xxx {int num_chips; } ;


 unsigned char snd_akm4xxx_get (struct snd_akm4xxx*,int,unsigned char) ;
 int snd_akm4xxx_write (struct snd_akm4xxx*,int,unsigned char,unsigned char) ;

__attribute__((used)) static void qtet_akm_set_regs(struct snd_akm4xxx *ak, unsigned char addr,
  unsigned char mask, unsigned char value)
{
 unsigned char tmp;
 int chip;
 for (chip = 0; chip < ak->num_chips; chip++) {
  tmp = snd_akm4xxx_get(ak, chip, addr);

  tmp &= ~mask;

  tmp |= value;
  snd_akm4xxx_write(ak, chip, addr, tmp);
 }
}
