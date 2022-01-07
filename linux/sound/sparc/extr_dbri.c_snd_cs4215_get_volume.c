
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {size_t private_value; } ;
struct snd_dbri {struct dbri_streaminfo* stream_info; } ;
struct TYPE_4__ {int * value; } ;
struct TYPE_3__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;
struct dbri_streaminfo {int right_gain; int left_gain; } ;


 int EINVAL ;
 scalar_t__ snd_BUG_ON (int) ;
 struct snd_dbri* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_cs4215_get_volume(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_dbri *dbri = snd_kcontrol_chip(kcontrol);
 struct dbri_streaminfo *info;

 if (snd_BUG_ON(!dbri))
  return -EINVAL;
 info = &dbri->stream_info[kcontrol->private_value];

 ucontrol->value.integer.value[0] = info->left_gain;
 ucontrol->value.integer.value[1] = info->right_gain;
 return 0;
}
