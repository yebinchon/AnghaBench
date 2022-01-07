
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int dummy; } ;


 int CONTROL_FLAG_ADC_B_96KHZ ;
 int CONTROL_FLAG_ADC_C_96KHZ ;
 int CONTROL_FLAG_ADC_C_HIGH_PASS ;
 int CONTROL_FLAG_DAC_96KHZ ;
 int CONTROL_FLAG_DSP_96KHZ ;
 int CONTROL_FLAG_IDLE_ENABLE ;
 int CONTROL_FLAG_PORT_A_10KOHM_LOAD ;
 int CONTROL_FLAG_PORT_A_COMMON_MODE ;
 int CONTROL_FLAG_PORT_D_10KOHM_LOAD ;
 int CONTROL_FLAG_PORT_D_COMMON_MODE ;
 int CONTROL_FLAG_SPDIF2OUT ;
 int CONTROL_FLAG_SRC_RATE_96KHZ ;
 scalar_t__ ca0132_use_alt_functions (struct ca0132_spec*) ;
 int chipio_set_control_flag (struct hda_codec*,int ,int) ;

__attribute__((used)) static void ca0132_init_flags(struct hda_codec *codec)
{
 struct ca0132_spec *spec = codec->spec;

 if (ca0132_use_alt_functions(spec)) {
  chipio_set_control_flag(codec, CONTROL_FLAG_DSP_96KHZ, 1);
  chipio_set_control_flag(codec, CONTROL_FLAG_DAC_96KHZ, 1);
  chipio_set_control_flag(codec, CONTROL_FLAG_ADC_B_96KHZ, 1);
  chipio_set_control_flag(codec, CONTROL_FLAG_ADC_C_96KHZ, 1);
  chipio_set_control_flag(codec, CONTROL_FLAG_SRC_RATE_96KHZ, 1);
  chipio_set_control_flag(codec, CONTROL_FLAG_IDLE_ENABLE, 0);
  chipio_set_control_flag(codec, CONTROL_FLAG_SPDIF2OUT, 0);
  chipio_set_control_flag(codec,
    CONTROL_FLAG_PORT_D_10KOHM_LOAD, 0);
  chipio_set_control_flag(codec,
    CONTROL_FLAG_PORT_A_10KOHM_LOAD, 1);
 } else {
  chipio_set_control_flag(codec, CONTROL_FLAG_IDLE_ENABLE, 0);
  chipio_set_control_flag(codec,
    CONTROL_FLAG_PORT_A_COMMON_MODE, 0);
  chipio_set_control_flag(codec,
    CONTROL_FLAG_PORT_D_COMMON_MODE, 0);
  chipio_set_control_flag(codec,
    CONTROL_FLAG_PORT_A_10KOHM_LOAD, 0);
  chipio_set_control_flag(codec,
    CONTROL_FLAG_PORT_D_10KOHM_LOAD, 0);
  chipio_set_control_flag(codec, CONTROL_FLAG_ADC_C_HIGH_PASS, 1);
 }
}
