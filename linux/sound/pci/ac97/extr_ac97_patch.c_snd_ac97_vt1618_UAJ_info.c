
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_kcontrol {size_t private_value; } ;
struct snd_ctl_elem_info {int dummy; } ;
struct TYPE_2__ {int items; } ;


 int snd_ctl_enum_info (struct snd_ctl_elem_info*,int,int,int ) ;
 TYPE_1__* vt1618_uaj ;

__attribute__((used)) static int snd_ac97_vt1618_UAJ_info(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_info *uinfo)
{
 return snd_ctl_enum_info(uinfo, 1, 4,
     vt1618_uaj[kcontrol->private_value].items);
}
