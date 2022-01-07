
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;


 int ENUMERATED_CTL_INFO (struct snd_ctl_elem_info*,char const* const*) ;

__attribute__((used)) static int snd_hdspm_info_system_clock_mode(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_info *uinfo)
{
 static const char *const texts[] = { "Master", "AutoSync" };
 ENUMERATED_CTL_INFO(uinfo, texts);
 return 0;
}
