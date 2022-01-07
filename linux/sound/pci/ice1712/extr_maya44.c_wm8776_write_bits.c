
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_wm8776 {unsigned short* regs; } ;
struct snd_ice1712 {int dummy; } ;


 int wm8776_write (struct snd_ice1712*,struct snd_wm8776*,unsigned char,unsigned short) ;

__attribute__((used)) static int wm8776_write_bits(struct snd_ice1712 *ice, struct snd_wm8776 *wm,
        unsigned char reg,
        unsigned short mask, unsigned short val)
{
 val |= wm->regs[reg] & ~mask;
 if (val != wm->regs[reg]) {
  wm8776_write(ice, wm, reg, val);
  return 1;
 }
 return 0;
}
