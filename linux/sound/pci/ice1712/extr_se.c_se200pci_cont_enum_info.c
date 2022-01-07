
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct snd_ctl_elem_info {int dummy; } ;
struct TYPE_2__ {int member; } ;


 int EINVAL ;
 TYPE_1__* se200pci_cont ;
 int se200pci_get_enum_count (int) ;
 int snd_ctl_enum_info (struct snd_ctl_elem_info*,int,int,int ) ;

__attribute__((used)) static int se200pci_cont_enum_info(struct snd_kcontrol *kc,
       struct snd_ctl_elem_info *uinfo)
{
 int n, c;

 n = kc->private_value;
 c = se200pci_get_enum_count(n);
 if (!c)
  return -EINVAL;
 return snd_ctl_enum_info(uinfo, 1, c, se200pci_cont[n].member);
}
