
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;


 int ARRAY_SIZE (char const* const*) ;
 int snd_ctl_enum_info (struct snd_ctl_elem_info*,int,int ,char const* const*) ;

__attribute__((used)) static int maya_pb_route_info(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_info *uinfo)
{
 static const char * const texts[] = {
  "PCM Out",
  "Input 1", "Input 2", "Input 3", "Input 4"
 };

 return snd_ctl_enum_info(uinfo, 1, ARRAY_SIZE(texts), texts);
}
