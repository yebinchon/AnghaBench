
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;
struct rme96 {int rev; TYPE_1__* pci; } ;
struct TYPE_2__ {int device; } ;


 int EINVAL ;




 int snd_BUG () ;
 int snd_ctl_enum_info (struct snd_ctl_elem_info*,int,int,char const**) ;
 struct rme96* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int
snd_rme96_info_inputtype_control(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_info *uinfo)
{
 static const char * const _texts[5] = {
  "Optical", "Coaxial", "Internal", "XLR", "Analog"
 };
 struct rme96 *rme96 = snd_kcontrol_chip(kcontrol);
 const char *texts[5] = {
  _texts[0], _texts[1], _texts[2], _texts[3], _texts[4]
 };
 int num_items;

 switch (rme96->pci->device) {
 case 131:
 case 130:
  num_items = 3;
  break;
 case 128:
  num_items = 4;
  break;
 case 129:
  if (rme96->rev > 4) {

   num_items = 4;
   texts[3] = _texts[4];
  } else {

   num_items = 5;
  }
  break;
 default:
  snd_BUG();
  return -EINVAL;
 }
 return snd_ctl_enum_info(uinfo, 1, num_items, texts);
}
