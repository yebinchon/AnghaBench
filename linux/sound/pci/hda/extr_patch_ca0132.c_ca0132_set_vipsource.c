
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {scalar_t__ dsp_state; scalar_t__ cur_mic_type; int * effects_switch; } ;


 int CONTROL_PARAM_VIP_SOURCE ;
 size_t CRYSTAL_VOICE ;
 scalar_t__ DIGITAL_MIC ;
 scalar_t__ DSP_DOWNLOADED ;
 size_t EFFECT_START_NID ;
 unsigned int FLOAT_ONE ;
 unsigned int FLOAT_TWO ;
 unsigned int FLOAT_ZERO ;
 int MEM_CONNID_MICIN1 ;
 int MEM_CONNID_MICOUT1 ;
 int SR_16_000 ;
 int SR_96_000 ;
 int chipio_set_conn_rate (struct hda_codec*,int ,int ) ;
 int chipio_set_control_param (struct hda_codec*,int ,int) ;
 int dspio_set_uint_param (struct hda_codec*,int,int,unsigned int) ;
 int msleep (int) ;

__attribute__((used)) static int ca0132_set_vipsource(struct hda_codec *codec, int val)
{
 struct ca0132_spec *spec = codec->spec;
 unsigned int tmp;

 if (spec->dsp_state != DSP_DOWNLOADED)
  return 0;


 if (!spec->effects_switch[CRYSTAL_VOICE - EFFECT_START_NID] ||
     (val == 0)) {
  chipio_set_control_param(codec, CONTROL_PARAM_VIP_SOURCE, 0);
  chipio_set_conn_rate(codec, MEM_CONNID_MICIN1, SR_96_000);
  chipio_set_conn_rate(codec, MEM_CONNID_MICOUT1, SR_96_000);
  if (spec->cur_mic_type == DIGITAL_MIC)
   tmp = FLOAT_TWO;
  else
   tmp = FLOAT_ONE;
  dspio_set_uint_param(codec, 0x80, 0x00, tmp);
  tmp = FLOAT_ZERO;
  dspio_set_uint_param(codec, 0x80, 0x05, tmp);
 } else {
  chipio_set_conn_rate(codec, MEM_CONNID_MICIN1, SR_16_000);
  chipio_set_conn_rate(codec, MEM_CONNID_MICOUT1, SR_16_000);
  if (spec->cur_mic_type == DIGITAL_MIC)
   tmp = FLOAT_TWO;
  else
   tmp = FLOAT_ONE;
  dspio_set_uint_param(codec, 0x80, 0x00, tmp);
  tmp = FLOAT_ONE;
  dspio_set_uint_param(codec, 0x80, 0x05, tmp);
  msleep(20);
  chipio_set_control_param(codec, CONTROL_PARAM_VIP_SOURCE, val);
 }

 return 1;
}
