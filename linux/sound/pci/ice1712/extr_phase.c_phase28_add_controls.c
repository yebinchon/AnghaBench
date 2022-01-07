
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int card; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int * phase28_dac_controls ;
 int snd_ctl_add (int ,int ) ;
 int snd_ctl_new1 (int *,struct snd_ice1712*) ;
 int * wm_controls ;

__attribute__((used)) static int phase28_add_controls(struct snd_ice1712 *ice)
{
 unsigned int i, counts;
 int err;

 counts = ARRAY_SIZE(phase28_dac_controls);
 for (i = 0; i < counts; i++) {
  err = snd_ctl_add(ice->card,
     snd_ctl_new1(&phase28_dac_controls[i],
       ice));
  if (err < 0)
   return err;
 }

 for (i = 0; i < ARRAY_SIZE(wm_controls); i++) {
  err = snd_ctl_add(ice->card,
     snd_ctl_new1(&wm_controls[i], ice));
  if (err < 0)
   return err;
 }

 return 0;
}
