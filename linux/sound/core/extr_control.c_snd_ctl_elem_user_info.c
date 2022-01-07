
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ctl_elem_info {int id; } ;
struct user_element {struct snd_ctl_elem_info info; } ;
struct snd_kcontrol {struct user_element* private_data; } ;


 int snd_ctl_build_ioff (int *,struct snd_kcontrol*,unsigned int) ;
 unsigned int snd_ctl_get_ioff (struct snd_kcontrol*,int *) ;

__attribute__((used)) static int snd_ctl_elem_user_info(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_info *uinfo)
{
 struct user_element *ue = kcontrol->private_data;
 unsigned int offset;

 offset = snd_ctl_get_ioff(kcontrol, &uinfo->id);
 *uinfo = ue->info;
 snd_ctl_build_ioff(&uinfo->id, kcontrol, offset);

 return 0;
}
