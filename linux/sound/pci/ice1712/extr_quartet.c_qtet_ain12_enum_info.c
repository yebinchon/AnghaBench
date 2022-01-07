
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;


 int ARRAY_SIZE (char const* const*) ;
 int snd_ctl_enum_info (struct snd_ctl_elem_info*,int,int ,char const* const*) ;

__attribute__((used)) static int qtet_ain12_enum_info(struct snd_kcontrol *kcontrol,
  struct snd_ctl_elem_info *uinfo)
{
 static const char * const texts[3] =
  {"Line In 1/2", "Mic", "Mic + Low-cut"};
 return snd_ctl_enum_info(uinfo, 1, ARRAY_SIZE(texts), texts);
}
