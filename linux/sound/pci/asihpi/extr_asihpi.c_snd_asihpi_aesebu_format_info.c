
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;


 int asihpi_aesebu_format_names ;
 int snd_ctl_enum_info (struct snd_ctl_elem_info*,int,int,int ) ;

__attribute__((used)) static int snd_asihpi_aesebu_format_info(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_info *uinfo)
{
 return snd_ctl_enum_info(uinfo, 1, 3, asihpi_aesebu_format_names);
}
