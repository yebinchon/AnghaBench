
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_wm8766 {int * regs; } ;


 int WM8766_REG_COUNT ;
 int snd_wm8766_write (struct snd_wm8766*,int,int ) ;

void snd_wm8766_resume(struct snd_wm8766 *wm)
{
 int i;

 for (i = 0; i < WM8766_REG_COUNT; i++)
  snd_wm8766_write(wm, i, wm->regs[i]);
}
