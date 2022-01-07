
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int card; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int snd_ctl_add (int ,int ) ;
 int snd_ctl_new1 (int *,struct snd_ice1712*) ;
 int * stac9640_controls ;

__attribute__((used)) static int wtm_add_controls(struct snd_ice1712 *ice)
{
 unsigned int i;
 int err;

 for (i = 0; i < ARRAY_SIZE(stac9640_controls); i++) {
  err = snd_ctl_add(ice->card,
    snd_ctl_new1(&stac9640_controls[i], ice));
  if (err < 0)
   return err;
 }
 return 0;
}
