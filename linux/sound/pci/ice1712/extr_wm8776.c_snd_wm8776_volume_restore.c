
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_wm8776 {int* regs; } ;


 size_t WM8776_REG_DACRVOL ;
 int WM8776_VOL_UPDATE ;
 int snd_wm8776_write (struct snd_wm8776*,size_t,int) ;

void snd_wm8776_volume_restore(struct snd_wm8776 *wm)
{
 u16 val = wm->regs[WM8776_REG_DACRVOL];

 snd_wm8776_write(wm, WM8776_REG_DACRVOL, val | WM8776_VOL_UPDATE);
}
