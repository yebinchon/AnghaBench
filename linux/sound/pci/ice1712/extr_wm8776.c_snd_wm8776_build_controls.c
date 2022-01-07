
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_wm8776 {TYPE_1__* ctl; } ;
struct TYPE_2__ {scalar_t__ name; } ;


 int WM8776_CTL_COUNT ;
 int snd_wm8776_add_control (struct snd_wm8776*,int) ;

int snd_wm8776_build_controls(struct snd_wm8776 *wm)
{
 int err, i;

 for (i = 0; i < WM8776_CTL_COUNT; i++)
  if (wm->ctl[i].name) {
   err = snd_wm8776_add_control(wm, i);
   if (err < 0)
    return err;
  }

 return 0;
}
