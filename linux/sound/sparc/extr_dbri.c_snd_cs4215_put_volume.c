
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {size_t private_value; } ;
struct snd_dbri {struct dbri_streaminfo* stream_info; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct dbri_streaminfo {unsigned int left_gain; unsigned int right_gain; } ;


 unsigned int DBRI_MAX_GAIN ;
 unsigned int DBRI_MAX_VOLUME ;
 size_t DBRI_PLAY ;
 int EINVAL ;
 int cs4215_setdata (struct snd_dbri*,int) ;
 struct snd_dbri* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int udelay (int) ;

__attribute__((used)) static int snd_cs4215_put_volume(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_dbri *dbri = snd_kcontrol_chip(kcontrol);
 struct dbri_streaminfo *info =
    &dbri->stream_info[kcontrol->private_value];
 unsigned int vol[2];
 int changed = 0;

 vol[0] = ucontrol->value.integer.value[0];
 vol[1] = ucontrol->value.integer.value[1];
 if (kcontrol->private_value == DBRI_PLAY) {
  if (vol[0] > DBRI_MAX_VOLUME || vol[1] > DBRI_MAX_VOLUME)
   return -EINVAL;
 } else {
  if (vol[0] > DBRI_MAX_GAIN || vol[1] > DBRI_MAX_GAIN)
   return -EINVAL;
 }

 if (info->left_gain != vol[0]) {
  info->left_gain = vol[0];
  changed = 1;
 }
 if (info->right_gain != vol[1]) {
  info->right_gain = vol[1];
  changed = 1;
 }
 if (changed) {



  cs4215_setdata(dbri, 1);
  udelay(125);
  cs4215_setdata(dbri, 0);
 }
 return changed;
}
