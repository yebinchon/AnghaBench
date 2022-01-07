
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_wm8776 {int dummy; } ;


 int WM8776_REG_PWRDOWN ;
 int snd_wm8776_write (struct snd_wm8776*,int ,int ) ;

void snd_wm8776_set_power(struct snd_wm8776 *wm, u16 power)
{
 snd_wm8776_write(wm, WM8776_REG_PWRDOWN, power);
}
