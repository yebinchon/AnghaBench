
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int hpi_sample_clock_get_sample_rate (int ,int *) ;

__attribute__((used)) static int snd_asihpi_clkrate_get(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 u32 h_control = kcontrol->private_value;
 u32 rate;
 u16 e;

 e = hpi_sample_clock_get_sample_rate(h_control, &rate);
 if (!e)
  ucontrol->value.integer.value[0] = rate;
 else
  ucontrol->value.integer.value[0] = 0;
 return 0;
}
