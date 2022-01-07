
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;


 int ENUMERATED_CTL_INFO (struct snd_ctl_elem_info*,char const* const*) ;

__attribute__((used)) static int snd_hdspm_info_tco_wck_conversion(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_info *uinfo)
{
 static const char *const texts[] = { "1:1", "44.1 -> 48", "48 -> 44.1" };
 ENUMERATED_CTL_INFO(uinfo, texts);
 return 0;
}
