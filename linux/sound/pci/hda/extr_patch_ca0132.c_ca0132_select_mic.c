
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int* vnode_lswitch; scalar_t__ cur_mic_type; int cur_mic_boost; int * effects_switch; int unsol_tag_amic1; } ;


 scalar_t__ DIGITAL_MIC ;
 size_t EFFECT_START_NID ;
 scalar_t__ LINE_MIC_IN ;
 int MEM_CONNID_DMIC ;
 int SR_32_000 ;
 int SR_96_000 ;
 size_t VNID_AMIC1_ASEL ;
 size_t VNID_AMIC1_SEL ;
 size_t VNODE_START_NID ;
 size_t VOICE_FOCUS ;
 int ca0132_effects_set (struct hda_codec*,size_t,int ) ;
 int ca0132_mic_boost_set (struct hda_codec*,int ) ;
 int ca0132_set_dmic (struct hda_codec*,int) ;
 int chipio_set_conn_rate (struct hda_codec*,int ,int ) ;
 int codec_dbg (struct hda_codec*,char*) ;
 int snd_hda_jack_detect (struct hda_codec*,int ) ;
 int snd_hda_power_down_pm (struct hda_codec*) ;
 int snd_hda_power_up_pm (struct hda_codec*) ;

__attribute__((used)) static int ca0132_select_mic(struct hda_codec *codec)
{
 struct ca0132_spec *spec = codec->spec;
 int jack_present;
 int auto_jack;

 codec_dbg(codec, "ca0132_select_mic\n");

 snd_hda_power_up_pm(codec);

 auto_jack = spec->vnode_lswitch[VNID_AMIC1_ASEL - VNODE_START_NID];

 if (auto_jack)
  jack_present = snd_hda_jack_detect(codec, spec->unsol_tag_amic1);
 else
  jack_present =
   spec->vnode_lswitch[VNID_AMIC1_SEL - VNODE_START_NID];

 if (jack_present)
  spec->cur_mic_type = LINE_MIC_IN;
 else
  spec->cur_mic_type = DIGITAL_MIC;

 if (spec->cur_mic_type == DIGITAL_MIC) {

  chipio_set_conn_rate(codec, MEM_CONNID_DMIC, SR_32_000);
  ca0132_set_dmic(codec, 1);
  ca0132_mic_boost_set(codec, 0);

  ca0132_effects_set(codec, VOICE_FOCUS,
       spec->effects_switch
       [VOICE_FOCUS - EFFECT_START_NID]);
 } else {

  chipio_set_conn_rate(codec, MEM_CONNID_DMIC, SR_96_000);
  ca0132_set_dmic(codec, 0);
  ca0132_mic_boost_set(codec, spec->cur_mic_boost);

  ca0132_effects_set(codec, VOICE_FOCUS, 0);
 }

 snd_hda_power_down_pm(codec);

 return 0;
}
