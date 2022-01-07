
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int hpi_handle_error (int ) ;
 int hpi_volume_get_mute (scalar_t__,scalar_t__*) ;

__attribute__((used)) static int snd_asihpi_volume_mute_get(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 u32 h_control = kcontrol->private_value;
 u32 mute;

 hpi_handle_error(hpi_volume_get_mute(h_control, &mute));
 ucontrol->value.integer.value[0] = mute ? 0 : 1;

 return 0;
}
