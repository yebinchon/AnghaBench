
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int item; int name; scalar_t__ items; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_info {TYPE_2__ value; int id; } ;
struct user_element {char* priv_data; struct snd_ctl_elem_info info; } ;
struct snd_kcontrol {struct user_element* private_data; } ;


 unsigned int min (unsigned int,scalar_t__) ;
 int snd_ctl_build_ioff (int *,struct snd_kcontrol*,unsigned int) ;
 unsigned int snd_ctl_get_ioff (struct snd_kcontrol*,int *) ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int snd_ctl_elem_user_enum_info(struct snd_kcontrol *kcontrol,
           struct snd_ctl_elem_info *uinfo)
{
 struct user_element *ue = kcontrol->private_data;
 const char *names;
 unsigned int item;
 unsigned int offset;

 item = uinfo->value.enumerated.item;

 offset = snd_ctl_get_ioff(kcontrol, &uinfo->id);
 *uinfo = ue->info;
 snd_ctl_build_ioff(&uinfo->id, kcontrol, offset);

 item = min(item, uinfo->value.enumerated.items - 1);
 uinfo->value.enumerated.item = item;

 names = ue->priv_data;
 for (; item > 0; --item)
  names += strlen(names) + 1;
 strcpy(uinfo->value.enumerated.name, names);

 return 0;
}
