
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;


 int snd_ctl_enum_info (struct snd_ctl_elem_info*,int,int,char const* const*) ;

int snd_hda_enum_helper_info(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_info *uinfo,
        int num_items, const char * const *texts)
{
 static const char * const texts_default[] = {
  "Disabled", "Enabled"
 };

 if (!texts || !num_items) {
  num_items = 2;
  texts = texts_default;
 }

 return snd_ctl_enum_info(uinfo, 1, num_items, texts);
}
