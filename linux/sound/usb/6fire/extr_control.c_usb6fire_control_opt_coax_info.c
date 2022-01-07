
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;


 int opt_coax_texts ;
 int snd_ctl_enum_info (struct snd_ctl_elem_info*,int,int,int ) ;

__attribute__((used)) static int usb6fire_control_opt_coax_info(struct snd_kcontrol *kcontrol,
  struct snd_ctl_elem_info *uinfo)
{
 return snd_ctl_enum_info(uinfo, 1, 2, opt_coax_texts);
}
