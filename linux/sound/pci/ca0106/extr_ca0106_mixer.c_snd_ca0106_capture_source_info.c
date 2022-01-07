
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;


 int snd_ctl_enum_info (struct snd_ctl_elem_info*,int,int,char const* const*) ;

__attribute__((used)) static int snd_ca0106_capture_source_info(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_info *uinfo)
{
 static const char * const texts[6] = {
  "IEC958 out", "i2s mixer out", "IEC958 in", "i2s in", "AC97 in", "SRC out"
 };

 return snd_ctl_enum_info(uinfo, 1, 6, texts);
}
