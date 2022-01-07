
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {short* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 short HPI_UNITS_PER_dB ;
 int hpi_handle_error (int ) ;
 int hpi_tuner_get_gain (int ,short*) ;

__attribute__((used)) static int snd_asihpi_tuner_gain_get(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{



 u32 h_control = kcontrol->private_value;
 short gain;

 hpi_handle_error(hpi_tuner_get_gain(h_control, &gain));
 ucontrol->value.integer.value[0] = gain / HPI_UNITS_PER_dB;

 return 0;
}
