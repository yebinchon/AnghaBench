
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int dummy; } ;


 int CONTROL_PARAM_PORTA_160OHM_GAIN ;
 int CONTROL_PARAM_PORTD_160OHM_GAIN ;
 int CONTROL_PARAM_SPDIF1_SOURCE ;
 int CONTROL_PARAM_VIP_SOURCE ;
 int MEM_CONNID_WUH ;
 int SR_48_000 ;
 scalar_t__ ca0132_use_alt_functions (struct ca0132_spec*) ;
 int chipio_set_conn_rate (struct hda_codec*,int,int ) ;
 int chipio_set_control_param (struct hda_codec*,int ,int) ;

__attribute__((used)) static void ca0132_init_params(struct hda_codec *codec)
{
 struct ca0132_spec *spec = codec->spec;

 if (ca0132_use_alt_functions(spec)) {
  chipio_set_conn_rate(codec, MEM_CONNID_WUH, SR_48_000);
  chipio_set_conn_rate(codec, 0x0B, SR_48_000);
  chipio_set_control_param(codec, CONTROL_PARAM_SPDIF1_SOURCE, 0);
  chipio_set_control_param(codec, 0, 0);
  chipio_set_control_param(codec, CONTROL_PARAM_VIP_SOURCE, 0);
 }

 chipio_set_control_param(codec, CONTROL_PARAM_PORTA_160OHM_GAIN, 6);
 chipio_set_control_param(codec, CONTROL_PARAM_PORTD_160OHM_GAIN, 6);
}
