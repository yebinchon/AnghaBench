
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;


 int snd_ctl_enum_info (struct snd_ctl_elem_info*,int,int,char const* const*) ;

__attribute__((used)) static int snd_ice1712_pro_internal_clock_info(struct snd_kcontrol *kcontrol,
            struct snd_ctl_elem_info *uinfo)
{
 static const char * const texts[] = {
  "8000",
  "9600",
  "11025",
  "12000",
  "16000",
  "22050",
  "24000",
  "32000",
  "44100",
  "48000",
  "64000",
  "88200",
  "96000",
  "IEC958 Input",
 };
 return snd_ctl_enum_info(uinfo, 1, 14, texts);
}
