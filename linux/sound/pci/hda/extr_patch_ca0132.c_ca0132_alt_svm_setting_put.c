
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int* item; } ;
struct TYPE_5__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int smart_volume_setting; } ;
struct TYPE_6__ {int * reqs; int mid; } ;


 unsigned int EFFECT_START_NID ;
 unsigned int FLOAT_ONE ;
 unsigned int FLOAT_TWO ;
 unsigned int FLOAT_ZERO ;
 unsigned int NUM_OF_SVM_SETTINGS ;
 unsigned int SMART_VOLUME ;
 TYPE_3__* ca0132_effects ;
 int codec_dbg (struct hda_codec*,char*,int,int ) ;
 int dspio_set_uint_param (struct hda_codec*,int ,int ,unsigned int) ;
 int * out_svm_set_enum_str ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int ca0132_alt_svm_setting_put(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 struct ca0132_spec *spec = codec->spec;
 int sel = ucontrol->value.enumerated.item[0];
 unsigned int items = NUM_OF_SVM_SETTINGS;
 unsigned int idx = SMART_VOLUME - EFFECT_START_NID;
 unsigned int tmp;

 if (sel >= items)
  return 0;

 codec_dbg(codec, "ca0132_alt_svm_setting: sel=%d, preset=%s\n",
      sel, out_svm_set_enum_str[sel]);

 spec->smart_volume_setting = sel;

 switch (sel) {
 case 0:
  tmp = FLOAT_ZERO;
  break;
 case 1:
  tmp = FLOAT_ONE;
  break;
 case 2:
  tmp = FLOAT_TWO;
  break;
 default:
  tmp = FLOAT_ZERO;
  break;
 }

 dspio_set_uint_param(codec, ca0132_effects[idx].mid,
   ca0132_effects[idx].reqs[2], tmp);
 return 1;
}
