
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int hpi_handle_error (int ) ;
 int hpi_sample_clock_set_local_rate (int ,int ) ;

__attribute__((used)) static int snd_asihpi_clklocal_put(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 int change;
 u32 h_control = kcontrol->private_value;




 change = 1;
 hpi_handle_error(hpi_sample_clock_set_local_rate(h_control,
          ucontrol->value.integer.value[0]));
 return change;
}
