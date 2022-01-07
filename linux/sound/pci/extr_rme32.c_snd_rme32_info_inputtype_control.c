
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;
struct rme32 {TYPE_1__* pci; } ;
struct TYPE_2__ {int device; } ;


 int EINVAL ;



 int snd_BUG () ;
 int snd_ctl_enum_info (struct snd_ctl_elem_info*,int,int,char const* const*) ;
 struct rme32* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int
snd_rme32_info_inputtype_control(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_info *uinfo)
{
 struct rme32 *rme32 = snd_kcontrol_chip(kcontrol);
 static const char * const texts[4] = {
  "Optical", "Coaxial", "Internal", "XLR"
 };
 int num_items;

 switch (rme32->pci->device) {
 case 130:
 case 129:
  num_items = 3;
  break;
 case 128:
  num_items = 4;
  break;
 default:
  snd_BUG();
  return -EINVAL;
 }
 return snd_ctl_enum_info(uinfo, 1, num_items, texts);
}
