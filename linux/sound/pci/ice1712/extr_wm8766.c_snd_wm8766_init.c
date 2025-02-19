
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_wm8766 {int ctl; } ;


 int ARRAY_SIZE (int const*) ;
 int WM8766_REG_RESET ;
 int memcpy (int ,int ,int) ;
 int snd_wm8766_default_ctl ;
 int snd_wm8766_write (struct snd_wm8766*,int,int const) ;
 int udelay (int) ;

void snd_wm8766_init(struct snd_wm8766 *wm)
{
 int i;
 static const u16 default_values[] = {
  0x000, 0x100,
  0x120, 0x000,
  0x000, 0x100, 0x000, 0x100, 0x000,
  0x000, 0x080,
 };

 memcpy(wm->ctl, snd_wm8766_default_ctl, sizeof(wm->ctl));

 snd_wm8766_write(wm, WM8766_REG_RESET, 0x00);
 udelay(10);

 for (i = 0; i < ARRAY_SIZE(default_values); i++)
  snd_wm8766_write(wm, i, default_values[i]);
}
