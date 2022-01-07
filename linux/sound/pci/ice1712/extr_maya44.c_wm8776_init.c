
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_wm8776 {unsigned int addr; int switch_bits; } ;
struct snd_ice1712 {int dummy; } ;


 int WM_SW_DAC ;
 int wm8776_write (struct snd_ice1712*,struct snd_wm8776*,unsigned char,unsigned short) ;

__attribute__((used)) static void wm8776_init(struct snd_ice1712 *ice,
   struct snd_wm8776 *wm, unsigned int addr)
{
 static const unsigned short inits_wm8776[] = {
  0x02, 0x100,
  0x05, 0x100,
  0x06, 0x000,
  0x07, 0x091,

  0x08, 0x000,
  0x09, 0x000,
  0x0a, 0x022,
  0x0b, 0x022,

  0x0c, 0x042,
  0x0d, 0x000,
  0x0e, 0x100,

  0x0f, 0x100,


  0x11, 0x000,


  0x15, 0x000,
  0x16, 0x001,
  0xff, 0xff
 };

 const unsigned short *ptr;
 unsigned char reg;
 unsigned short data;

 wm->addr = addr;

 wm->switch_bits = (1 << WM_SW_DAC);

 ptr = inits_wm8776;
 while (*ptr != 0xff) {
  reg = *ptr++;
  data = *ptr++;
  wm8776_write(ice, wm, reg, data);
 }
}
