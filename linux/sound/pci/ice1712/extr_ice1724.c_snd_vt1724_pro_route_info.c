
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;


 int snd_ctl_enum_info (struct snd_ctl_elem_info*,int,int,char const* const*) ;

__attribute__((used)) static int snd_vt1724_pro_route_info(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_info *uinfo)
{
 static const char * const texts[] = {
  "PCM Out",
  "H/W In 0", "H/W In 1",
  "IEC958 In L", "IEC958 In R",
 };

 return snd_ctl_enum_info(uinfo, 1, 5, texts);
}
