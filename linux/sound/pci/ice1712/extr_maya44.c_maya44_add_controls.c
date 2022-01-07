
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int spec; int card; } ;


 int ARRAY_SIZE (int *) ;
 int * maya_controls ;
 int snd_ctl_add (int ,int ) ;
 int snd_ctl_new1 (int *,int ) ;

__attribute__((used)) static int maya44_add_controls(struct snd_ice1712 *ice)
{
 int err, i;

 for (i = 0; i < ARRAY_SIZE(maya_controls); i++) {
  err = snd_ctl_add(ice->card, snd_ctl_new1(&maya_controls[i],
         ice->spec));
  if (err < 0)
   return err;
 }
 return 0;
}
