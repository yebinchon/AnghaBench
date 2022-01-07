
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int card; int * a3d; } ;
typedef TYPE_2__ vortex_t ;
struct TYPE_4__ {int numid; } ;
struct snd_kcontrol {int put; int info; TYPE_1__ id; } ;


 int CTRLID_FILTER ;
 int CTRLID_GAINS ;
 int CTRLID_HRTF ;
 int CTRLID_ITD ;
 int ENOMEM ;
 int NR_A3D ;
 int snd_ctl_add (int ,struct snd_kcontrol*) ;
 struct snd_kcontrol* snd_ctl_new1 (int *,int *) ;
 int snd_vortex_a3d_filter_info ;
 int snd_vortex_a3d_filter_put ;
 int snd_vortex_a3d_hrtf_info ;
 int snd_vortex_a3d_hrtf_put ;
 int snd_vortex_a3d_ild_info ;
 int snd_vortex_a3d_ild_put ;
 int snd_vortex_a3d_itd_info ;
 int snd_vortex_a3d_itd_put ;
 int vortex_a3d_kcontrol ;

__attribute__((used)) static int vortex_a3d_register_controls(vortex_t *vortex)
{
 struct snd_kcontrol *kcontrol;
 int err, i;

 for (i = 0; i < NR_A3D; i++) {
  if ((kcontrol =
       snd_ctl_new1(&vortex_a3d_kcontrol, &vortex->a3d[i])) == ((void*)0))
   return -ENOMEM;
  kcontrol->id.numid = CTRLID_HRTF;
  kcontrol->info = snd_vortex_a3d_hrtf_info;
  kcontrol->put = snd_vortex_a3d_hrtf_put;
  if ((err = snd_ctl_add(vortex->card, kcontrol)) < 0)
   return err;
 }

 for (i = 0; i < NR_A3D; i++) {
  if ((kcontrol =
       snd_ctl_new1(&vortex_a3d_kcontrol, &vortex->a3d[i])) == ((void*)0))
   return -ENOMEM;
  kcontrol->id.numid = CTRLID_ITD;
  kcontrol->info = snd_vortex_a3d_itd_info;
  kcontrol->put = snd_vortex_a3d_itd_put;
  if ((err = snd_ctl_add(vortex->card, kcontrol)) < 0)
   return err;
 }

 for (i = 0; i < NR_A3D; i++) {
  if ((kcontrol =
       snd_ctl_new1(&vortex_a3d_kcontrol, &vortex->a3d[i])) == ((void*)0))
   return -ENOMEM;
  kcontrol->id.numid = CTRLID_GAINS;
  kcontrol->info = snd_vortex_a3d_ild_info;
  kcontrol->put = snd_vortex_a3d_ild_put;
  if ((err = snd_ctl_add(vortex->card, kcontrol)) < 0)
   return err;
 }

 for (i = 0; i < NR_A3D; i++) {
  if ((kcontrol =
       snd_ctl_new1(&vortex_a3d_kcontrol, &vortex->a3d[i])) == ((void*)0))
   return -ENOMEM;
  kcontrol->id.numid = CTRLID_FILTER;
  kcontrol->info = snd_vortex_a3d_filter_info;
  kcontrol->put = snd_vortex_a3d_filter_put;
  if ((err = snd_ctl_add(vortex->card, kcontrol)) < 0)
   return err;
 }
 return 0;
}
