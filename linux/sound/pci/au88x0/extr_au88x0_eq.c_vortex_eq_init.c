
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int card; } ;
typedef TYPE_2__ vortex_t ;
struct TYPE_6__ {int name; } ;
struct snd_kcontrol {int private_value; TYPE_1__ id; } ;


 int ENOMEM ;
 char** EqBandLabels ;
 int snd_ctl_add (int ,struct snd_kcontrol*) ;
 struct snd_kcontrol* snd_ctl_new1 (int *,TYPE_2__*) ;
 int snprintf (int ,int,char*,char*) ;
 int vortex_Eqlzr_init (TYPE_2__*) ;
 int vortex_eq_kcontrol ;
 int vortex_eqtoggle_kcontrol ;
 int vortex_levels_kcontrol ;

__attribute__((used)) static int vortex_eq_init(vortex_t *vortex)
{
 struct snd_kcontrol *kcontrol;
 int err, i;

 vortex_Eqlzr_init(vortex);

 if ((kcontrol =
      snd_ctl_new1(&vortex_eqtoggle_kcontrol, vortex)) == ((void*)0))
  return -ENOMEM;
 kcontrol->private_value = 0;
 if ((err = snd_ctl_add(vortex->card, kcontrol)) < 0)
  return err;


 for (i = 0; i < 10; i++) {
  if ((kcontrol =
       snd_ctl_new1(&vortex_eq_kcontrol, vortex)) == ((void*)0))
   return -ENOMEM;
  snprintf(kcontrol->id.name, sizeof(kcontrol->id.name),
   "%s Playback Volume", EqBandLabels[i]);
  kcontrol->private_value = i;
  if ((err = snd_ctl_add(vortex->card, kcontrol)) < 0)
   return err;

 }

 if ((kcontrol = snd_ctl_new1(&vortex_levels_kcontrol, vortex)) == ((void*)0))
  return -ENOMEM;
 if ((err = snd_ctl_add(vortex->card, kcontrol)) < 0)
  return err;

 return 0;
}
