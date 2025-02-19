
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {scalar_t__ type; } ;
struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;


 scalar_t__ VX_TYPE_VXPOCKET ;
 int snd_ctl_enum_info (struct snd_ctl_elem_info*,int,int,char const* const*) ;
 struct vx_core* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int vx_audio_src_info(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_info *uinfo)
{
 static const char * const texts_mic[3] = {
  "Digital", "Line", "Mic"
 };
 static const char * const texts_vx2[2] = {
  "Digital", "Analog"
 };
 struct vx_core *chip = snd_kcontrol_chip(kcontrol);

 if (chip->type >= VX_TYPE_VXPOCKET)
  return snd_ctl_enum_info(uinfo, 1, 3, texts_mic);
 else
  return snd_ctl_enum_info(uinfo, 1, 2, texts_vx2);
}
