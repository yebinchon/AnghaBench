
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_wm8776 {unsigned short* regs; int addr; } ;
struct snd_ice1712 {int dummy; } ;


 int snd_vt1724_write_i2c (struct snd_ice1712*,int ,unsigned char,unsigned short) ;

__attribute__((used)) static void wm8776_write(struct snd_ice1712 *ice, struct snd_wm8776 *wm,
    unsigned char reg, unsigned short val)
{




 snd_vt1724_write_i2c(ice, wm->addr,
        (reg << 1) | ((val >> 8) & 1),
        val & 0xff);
 wm->regs[reg] = val;
}
