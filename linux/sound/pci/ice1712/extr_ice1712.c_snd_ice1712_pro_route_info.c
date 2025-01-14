
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int id; } ;


 int snd_ctl_enum_info (struct snd_ctl_elem_info*,int,int,char const* const*) ;
 int snd_ctl_get_ioffidx (struct snd_kcontrol*,int *) ;

__attribute__((used)) static int snd_ice1712_pro_route_info(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_info *uinfo)
{
 static const char * const texts[] = {
  "PCM Out",
  "H/W In 0", "H/W In 1", "H/W In 2", "H/W In 3",
  "H/W In 4", "H/W In 5", "H/W In 6", "H/W In 7",
  "IEC958 In L", "IEC958 In R",
  "Digital Mixer",
 };
 int num_items = snd_ctl_get_ioffidx(kcontrol, &uinfo->id) < 2 ? 12 : 11;
 return snd_ctl_enum_info(uinfo, 1, num_items, texts);
}
