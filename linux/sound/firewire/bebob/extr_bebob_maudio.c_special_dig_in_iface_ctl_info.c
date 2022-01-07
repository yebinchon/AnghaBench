
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int snd_ctl_enum_info (struct snd_ctl_elem_info*,int,int ,int ) ;
 int special_dig_in_iface_labels ;

__attribute__((used)) static int special_dig_in_iface_ctl_info(struct snd_kcontrol *kctl,
      struct snd_ctl_elem_info *einf)
{
 return snd_ctl_enum_info(einf, 1,
     ARRAY_SIZE(special_dig_in_iface_labels),
     special_dig_in_iface_labels);
}
