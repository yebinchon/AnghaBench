
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {scalar_t__* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int hpi_channel_mode_set (int ,scalar_t__) ;
 int hpi_handle_error (int ) ;

__attribute__((used)) static int snd_asihpi_cmode_put(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 int change;
 u32 h_control = kcontrol->private_value;

 change = 1;

 hpi_handle_error(hpi_channel_mode_set(h_control,
      ucontrol->value.enumerated.item[0] + 1));
 return change;
}
