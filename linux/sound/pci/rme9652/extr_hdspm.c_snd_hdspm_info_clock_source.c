
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;


 int snd_ctl_enum_info (struct snd_ctl_elem_info*,int,int,scalar_t__) ;
 scalar_t__ texts_freq ;

__attribute__((used)) static int snd_hdspm_info_clock_source(struct snd_kcontrol *kcontrol,
           struct snd_ctl_elem_info *uinfo)
{
 return snd_ctl_enum_info(uinfo, 1, 9, texts_freq + 1);
}
