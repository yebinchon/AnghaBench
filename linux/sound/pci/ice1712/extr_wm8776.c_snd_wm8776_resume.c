
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_wm8776 {int * regs; } ;


 int WM8776_REG_COUNT ;
 int snd_wm8776_write (struct snd_wm8776*,int,int ) ;

void snd_wm8776_resume(struct snd_wm8776 *wm)
{
 int i;

 for (i = 0; i < WM8776_REG_COUNT; i++)
  snd_wm8776_write(wm, i, wm->regs[i]);
}
