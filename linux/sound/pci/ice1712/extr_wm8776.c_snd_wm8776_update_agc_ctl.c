
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_wm8776 {int agc_mode; TYPE_1__* ctl; } ;
struct TYPE_2__ {int flags; int name; } ;







 int WM8776_CTL_COUNT ;
 int WM8776_FLAG_ALC ;
 int WM8776_FLAG_LIM ;
 int snd_wm8776_activate_ctl (struct snd_wm8776*,int ,int) ;

__attribute__((used)) static void snd_wm8776_update_agc_ctl(struct snd_wm8776 *wm)
{
 int i, flags_on = 0, flags_off = 0;

 switch (wm->agc_mode) {
 case 128:
  flags_off = WM8776_FLAG_LIM | WM8776_FLAG_ALC;
  break;
 case 129:
  flags_off = WM8776_FLAG_ALC;
  flags_on = WM8776_FLAG_LIM;
  break;
 case 131:
 case 132:
 case 130:
  flags_off = WM8776_FLAG_LIM;
  flags_on = WM8776_FLAG_ALC;
  break;
 }

 for (i = 0; i < WM8776_CTL_COUNT; i++)
  if (wm->ctl[i].flags & flags_off)
   snd_wm8776_activate_ctl(wm, wm->ctl[i].name, 0);
  else if (wm->ctl[i].flags & flags_on)
   snd_wm8776_activate_ctl(wm, wm->ctl[i].name, 1);
}
