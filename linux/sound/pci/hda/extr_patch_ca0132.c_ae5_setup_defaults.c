
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {scalar_t__ dsp_state; } ;
struct TYPE_2__ {int params; int mid; int* reqs; unsigned int* def_vals; } ;


 scalar_t__ DSP_DOWNLOADED ;
 unsigned int FLOAT_ONE ;
 unsigned int FLOAT_TWO ;
 unsigned int FLOAT_ZERO ;
 int IN_EFFECTS_COUNT ;
 int MEM_CONNID_WUH ;
 int OUT_EFFECTS_COUNT ;
 int SR_48_000 ;
 int ae5_post_dsp_param_setup (struct hda_codec*) ;
 int ae5_post_dsp_pll_setup (struct hda_codec*) ;
 int ae5_post_dsp_register_set (struct hda_codec*) ;
 int ae5_post_dsp_startup_data (struct hda_codec*) ;
 int ae5_post_dsp_stream_setup (struct hda_codec*) ;
 int ca0113_mmio_command_set (struct hda_codec*,int,int,int) ;
 int ca0113_mmio_gpio_set (struct hda_codec*,int ,int) ;
 int ca0132_alt_create_dummy_stream (struct hda_codec*) ;
 int ca0132_alt_dsp_initial_mic_setup (struct hda_codec*) ;
 int ca0132_alt_dsp_scp_startup (struct hda_codec*) ;
 int ca0132_alt_init_analog_mics (struct hda_codec*) ;
 TYPE_1__* ca0132_effects ;
 int chipio_set_conn_rate (struct hda_codec*,int ,int ) ;
 int chipio_set_stream_control (struct hda_codec*,int,int) ;
 int dspio_set_uint_param (struct hda_codec*,int,int,unsigned int) ;

__attribute__((used)) static void ae5_setup_defaults(struct hda_codec *codec)
{
 struct ca0132_spec *spec = codec->spec;
 unsigned int tmp;
 int num_fx;
 int idx, i;

 if (spec->dsp_state != DSP_DOWNLOADED)
  return;

 ca0132_alt_dsp_scp_startup(codec);
 ca0132_alt_init_analog_mics(codec);
 chipio_set_stream_control(codec, 0x03, 1);
 chipio_set_stream_control(codec, 0x04, 1);


 tmp = FLOAT_ZERO;
 dspio_set_uint_param(codec, 0x96, 0x29, tmp);
 dspio_set_uint_param(codec, 0x96, 0x2a, tmp);
 dspio_set_uint_param(codec, 0x80, 0x0d, tmp);
 dspio_set_uint_param(codec, 0x80, 0x0e, tmp);

 ca0113_mmio_command_set(codec, 0x30, 0x2e, 0x3f);
 ca0113_mmio_gpio_set(codec, 0, 0);
 ca0113_mmio_command_set(codec, 0x30, 0x28, 0x00);


 tmp = FLOAT_ONE;
 dspio_set_uint_param(codec, 0x37, 0x08, tmp);
 dspio_set_uint_param(codec, 0x37, 0x10, tmp);


 tmp = FLOAT_ZERO;
 dspio_set_uint_param(codec, 0x96, 0x3C, tmp);


 tmp = FLOAT_TWO;
 dspio_set_uint_param(codec, 0x31, 0x00, tmp);
 chipio_set_conn_rate(codec, MEM_CONNID_WUH, SR_48_000);


 dspio_set_uint_param(codec, 0x32, 0x00, tmp);

 ca0132_alt_dsp_initial_mic_setup(codec);
 ae5_post_dsp_register_set(codec);
 ae5_post_dsp_param_setup(codec);
 ae5_post_dsp_pll_setup(codec);
 ae5_post_dsp_stream_setup(codec);
 ae5_post_dsp_startup_data(codec);


 num_fx = OUT_EFFECTS_COUNT + IN_EFFECTS_COUNT + 1;
 for (idx = 0; idx < num_fx; idx++) {
  for (i = 0; i <= ca0132_effects[idx].params; i++) {
   dspio_set_uint_param(codec,
     ca0132_effects[idx].mid,
     ca0132_effects[idx].reqs[i],
     ca0132_effects[idx].def_vals[i]);
  }
 }

 ca0132_alt_create_dummy_stream(codec);
}
