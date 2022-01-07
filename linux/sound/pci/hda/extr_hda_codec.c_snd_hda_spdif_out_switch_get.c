
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_4__ {int* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_spdif_out {int ctls; } ;
struct TYPE_6__ {int used; } ;
struct hda_codec {int spdif_mutex; TYPE_3__ spdif_out; } ;


 int AC_DIG1_ENABLE ;
 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct hda_spdif_out* snd_array_elem (TYPE_3__*,int) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_hda_spdif_out_switch_get(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 int idx = kcontrol->private_value;
 struct hda_spdif_out *spdif;

 if (WARN_ON(codec->spdif_out.used <= idx))
  return -EINVAL;
 mutex_lock(&codec->spdif_mutex);
 spdif = snd_array_elem(&codec->spdif_out, idx);
 ucontrol->value.integer.value[0] = spdif->ctls & AC_DIG1_ENABLE;
 mutex_unlock(&codec->spdif_mutex);
 return 0;
}
