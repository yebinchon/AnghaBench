
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hda_fixup {int dummy; } ;
struct hda_codec {struct alc_spec* spec; } ;
struct auto_pin_cfg {int num_inputs; TYPE_2__* inputs; } ;
struct TYPE_3__ {struct auto_pin_cfg autocfg; } ;
struct alc_spec {TYPE_1__ gen; } ;
typedef int hda_nid_t ;
struct TYPE_4__ {scalar_t__ type; int pin; } ;


 int AC_AMPCAP_MUTE_SHIFT ;
 int AC_AMPCAP_NUM_STEPS_SHIFT ;
 int AC_AMPCAP_OFFSET_SHIFT ;
 int AC_AMPCAP_STEP_SIZE_SHIFT ;
 scalar_t__ AUTO_PIN_MIC ;
 int HDA_FIXUP_ACT_PROBE ;
 int HDA_INPUT ;
 scalar_t__ INPUT_PIN_ATTR_INT ;
 unsigned int snd_hda_codec_get_pincfg (struct hda_codec*,int ) ;
 scalar_t__ snd_hda_get_input_pin_attr (unsigned int) ;
 int snd_hda_override_amp_caps (struct hda_codec*,int ,int ,int) ;

__attribute__((used)) static void alc269_fixup_limit_int_mic_boost(struct hda_codec *codec,
          const struct hda_fixup *fix,
          int action)
{
 struct alc_spec *spec = codec->spec;
 struct auto_pin_cfg *cfg = &spec->gen.autocfg;
 int i;





 if (action != HDA_FIXUP_ACT_PROBE)
  return;

 for (i = 0; i < cfg->num_inputs; i++) {
  hda_nid_t nid = cfg->inputs[i].pin;
  unsigned int defcfg;
  if (cfg->inputs[i].type != AUTO_PIN_MIC)
   continue;
  defcfg = snd_hda_codec_get_pincfg(codec, nid);
  if (snd_hda_get_input_pin_attr(defcfg) != INPUT_PIN_ATTR_INT)
   continue;

  snd_hda_override_amp_caps(codec, nid, HDA_INPUT,
       (0x00 << AC_AMPCAP_OFFSET_SHIFT) |
       (0x01 << AC_AMPCAP_NUM_STEPS_SHIFT) |
       (0x2f << AC_AMPCAP_STEP_SIZE_SHIFT) |
       (0 << AC_AMPCAP_MUTE_SHIFT));
 }
}
