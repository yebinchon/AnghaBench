
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_wm8766 {int* regs; } ;


 size_t WM8766_REG_DACR1 ;
 int WM8766_VOL_UPDATE ;
 int snd_wm8766_write (struct snd_wm8766*,size_t,int) ;

void snd_wm8766_volume_restore(struct snd_wm8766 *wm)
{
 u16 val = wm->regs[WM8766_REG_DACR1];

 snd_wm8766_write(wm, WM8766_REG_DACR1, val | WM8766_VOL_UPDATE);
}
