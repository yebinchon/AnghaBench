
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int card; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int * prodigy_hd2_controls ;
 int snd_ctl_add (int ,int ) ;
 int snd_ctl_new1 (int *,struct snd_ice1712*) ;
 int wm_proc_init (struct snd_ice1712*) ;

__attribute__((used)) static int prodigy_hd2_add_controls(struct snd_ice1712 *ice)
{
 unsigned int i;
 int err;

 for (i = 0; i < ARRAY_SIZE(prodigy_hd2_controls); i++) {
  err = snd_ctl_add(ice->card,
      snd_ctl_new1(&prodigy_hd2_controls[i], ice));
  if (err < 0)
   return err;
 }

 wm_proc_init(ice);

 return 0;
}
