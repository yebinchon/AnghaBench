
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_wm8766 {int* regs; } ;


 int WM8766_IF_MASK ;
 size_t WM8766_REG_IFCTRL ;
 int snd_wm8766_write (struct snd_wm8766*,size_t,int) ;

void snd_wm8766_set_if(struct snd_wm8766 *wm, u16 dac)
{
 u16 val = wm->regs[WM8766_REG_IFCTRL] & ~WM8766_IF_MASK;

 dac &= WM8766_IF_MASK;
 snd_wm8766_write(wm, WM8766_REG_IFCTRL, val | dac);
}
