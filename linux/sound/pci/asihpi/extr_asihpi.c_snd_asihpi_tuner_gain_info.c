
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int min; int max; int step; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_info {int count; TYPE_2__ value; int type; } ;


 int HPI_UNITS_PER_dB ;
 int SNDRV_CTL_ELEM_TYPE_INTEGER ;
 scalar_t__ hpi_tuner_query_gain (int ,short,scalar_t__*) ;

__attribute__((used)) static int snd_asihpi_tuner_gain_info(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_info *uinfo)
{
 u32 h_control = kcontrol->private_value;
 u16 err;
 short idx;
 u16 gain_range[3];

 for (idx = 0; idx < 3; idx++) {
  err = hpi_tuner_query_gain(h_control,
       idx, &gain_range[idx]);
  if (err != 0)
   return err;
 }

 uinfo->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
 uinfo->count = 1;
 uinfo->value.integer.min = ((int)gain_range[0]) / HPI_UNITS_PER_dB;
 uinfo->value.integer.max = ((int)gain_range[1]) / HPI_UNITS_PER_dB;
 uinfo->value.integer.step = ((int) gain_range[2]) / HPI_UNITS_PER_dB;
 return 0;
}
