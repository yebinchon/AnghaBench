
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {struct oxygen* private_data; } ;
struct snd_ctl_elem_info {int dummy; } ;
struct oxygen {int dummy; } ;


 int snd_ctl_enum_info (struct snd_ctl_elem_info*,int,unsigned int,char const* const*) ;
 unsigned int upmix_item_count (struct oxygen*) ;

__attribute__((used)) static int upmix_info(struct snd_kcontrol *ctl, struct snd_ctl_elem_info *info)
{
 static const char *const names[5] = {
  "Front",
  "Front+Surround",
  "Front+Surround+Back",
  "Front+Surround+Center/LFE",
  "Front+Surround+Center/LFE+Back",
 };
 struct oxygen *chip = ctl->private_data;
 unsigned int count = upmix_item_count(chip);

 return snd_ctl_enum_info(info, 1, count, names);
}
