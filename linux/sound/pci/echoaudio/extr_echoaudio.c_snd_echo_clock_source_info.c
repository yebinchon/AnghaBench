
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;
struct echoaudio {int num_clock_sources; } ;


 int snd_ctl_enum_info (struct snd_ctl_elem_info*,int,int ,char const* const*) ;
 struct echoaudio* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_echo_clock_source_info(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_info *uinfo)
{
 static const char * const names[8] = {
  "Internal", "Word", "Super", "S/PDIF", "ADAT", "ESync",
  "ESync96", "MTC"
 };
 struct echoaudio *chip;

 chip = snd_kcontrol_chip(kcontrol);
 return snd_ctl_enum_info(uinfo, 1, chip->num_clock_sources, names);
}
