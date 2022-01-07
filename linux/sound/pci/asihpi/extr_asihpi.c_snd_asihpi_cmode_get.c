
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 scalar_t__ hpi_channel_mode_get (int ,int*) ;

__attribute__((used)) static int snd_asihpi_cmode_get(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 u32 h_control = kcontrol->private_value;
 u16 mode;

 if (hpi_channel_mode_get(h_control, &mode))
  mode = 1;

 ucontrol->value.enumerated.item[0] = mode - 1;

 return 0;
}
