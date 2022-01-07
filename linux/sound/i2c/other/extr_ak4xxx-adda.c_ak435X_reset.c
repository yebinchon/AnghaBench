
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_akm4xxx {unsigned char total_regs; } ;


 int snd_akm4xxx_get (struct snd_akm4xxx*,int ,unsigned char) ;
 int snd_akm4xxx_write (struct snd_akm4xxx*,int ,int,int) ;

__attribute__((used)) static void ak435X_reset(struct snd_akm4xxx *ak, int state)
{
 unsigned char reg;

 if (state) {
  snd_akm4xxx_write(ak, 0, 0x01, 0x02);
  return;
 }
 for (reg = 0x00; reg < ak->total_regs; reg++)
  if (reg != 0x01)
   snd_akm4xxx_write(ak, 0, reg,
       snd_akm4xxx_get(ak, 0, reg));
 snd_akm4xxx_write(ak, 0, 0x01, 0x01);
}
