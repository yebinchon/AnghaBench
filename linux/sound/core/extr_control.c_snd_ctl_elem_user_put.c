
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_element {unsigned int elem_data_size; char* elem_data; } ;
struct snd_kcontrol {struct user_element* private_data; } ;
struct snd_ctl_elem_value {int value; int id; } ;


 scalar_t__ memcmp (int *,char*,unsigned int) ;
 int memcpy (char*,int *,unsigned int) ;
 unsigned int snd_ctl_get_ioff (struct snd_kcontrol*,int *) ;

__attribute__((used)) static int snd_ctl_elem_user_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 int change;
 struct user_element *ue = kcontrol->private_data;
 unsigned int size = ue->elem_data_size;
 char *dst = ue->elem_data +
   snd_ctl_get_ioff(kcontrol, &ucontrol->id) * size;

 change = memcmp(&ucontrol->value, dst, size) != 0;
 if (change)
  memcpy(dst, &ucontrol->value, size);
 return change;
}
