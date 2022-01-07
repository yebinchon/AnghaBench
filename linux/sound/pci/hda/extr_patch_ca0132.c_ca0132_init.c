
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ca0132_spec* spec; } ;
struct auto_pin_cfg {int dig_in_pin; int * dig_out_pins; } ;
struct ca0132_spec {scalar_t__ dsp_state; int dsp_reload; int num_outputs; int num_inputs; int spec_init_verbs; int chip_init_verbs; int dig_in; int * adcs; int * input_pins; int dig_out; int * dacs; int * out_pins; int base_init_verbs; int curr_chip_addx; struct auto_pin_cfg autocfg; } ;


 scalar_t__ DSP_DOWNLOADED ;
 scalar_t__ DSP_DOWNLOAD_FAILED ;
 void* DSP_DOWNLOAD_INIT ;
 int INVALID_CHIP_ADDRESS ;





 int VENDOR_CHIPIO_PARAM_EX_ID_SET ;
 int VENDOR_CHIPIO_PARAM_EX_VALUE_SET ;
 int WIDGET_CHIP_CTRL ;
 int ae5_register_set (struct hda_codec*) ;
 int ae5_setup_defaults (struct hda_codec*) ;
 int ca0132_alt_init (struct hda_codec*) ;
 int ca0132_alt_select_in (struct hda_codec*) ;
 int ca0132_alt_select_out (struct hda_codec*) ;
 int ca0132_download_dsp (struct hda_codec*) ;
 int ca0132_gpio_setup (struct hda_codec*) ;
 int ca0132_init_analog_mic2 (struct hda_codec*) ;
 int ca0132_init_dmic (struct hda_codec*) ;
 int ca0132_init_flags (struct hda_codec*) ;
 int ca0132_init_params (struct hda_codec*) ;
 int ca0132_init_unsol (struct hda_codec*) ;
 int ca0132_mmio_init (struct hda_codec*) ;
 int ca0132_pe_switch_set (struct hda_codec*) ;
 int ca0132_quirk (struct ca0132_spec*) ;
 int ca0132_refresh_widget_caps (struct hda_codec*) ;
 int ca0132_select_mic (struct hda_codec*) ;
 int ca0132_select_out (struct hda_codec*) ;
 int ca0132_setup_defaults (struct hda_codec*) ;
 scalar_t__ ca0132_use_alt_functions (struct ca0132_spec*) ;
 scalar_t__ ca0132_use_pci_mmio (struct ca0132_spec*) ;
 int dspload_is_loaded (struct hda_codec*) ;
 int init_input (struct hda_codec*,int ,int ) ;
 int init_output (struct hda_codec*,int ,int ) ;
 int r3d_setup_defaults (struct hda_codec*) ;
 int sbz_dsp_startup_check (struct hda_codec*) ;
 int sbz_setup_defaults (struct hda_codec*) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int) ;
 int snd_hda_jack_report_sync (struct hda_codec*) ;
 int snd_hda_power_down_pm (struct hda_codec*) ;
 int snd_hda_power_up_pm (struct hda_codec*) ;
 int snd_hda_sequence_write (struct hda_codec*,int ) ;

__attribute__((used)) static int ca0132_init(struct hda_codec *codec)
{
 struct ca0132_spec *spec = codec->spec;
 struct auto_pin_cfg *cfg = &spec->autocfg;
 int i;
 bool dsp_loaded;
 if (spec->dsp_state == DSP_DOWNLOADED) {
  dsp_loaded = dspload_is_loaded(codec);
  if (!dsp_loaded) {
   spec->dsp_reload = 1;
   spec->dsp_state = DSP_DOWNLOAD_INIT;
  } else {
   if (ca0132_quirk(spec) == 129)
    sbz_dsp_startup_check(codec);
   return 0;
  }
 }

 if (spec->dsp_state != DSP_DOWNLOAD_FAILED)
  spec->dsp_state = DSP_DOWNLOAD_INIT;
 spec->curr_chip_addx = INVALID_CHIP_ADDRESS;

 if (ca0132_use_pci_mmio(spec))
  ca0132_mmio_init(codec);

 snd_hda_power_up_pm(codec);

 if (ca0132_quirk(spec) == 132)
  ae5_register_set(codec);

 ca0132_init_unsol(codec);
 ca0132_init_params(codec);
 ca0132_init_flags(codec);

 snd_hda_sequence_write(codec, spec->base_init_verbs);

 if (ca0132_use_alt_functions(spec))
  ca0132_alt_init(codec);

 ca0132_download_dsp(codec);

 ca0132_refresh_widget_caps(codec);

 switch (ca0132_quirk(spec)) {
 case 130:
 case 131:
  r3d_setup_defaults(codec);
  break;
 case 129:
 case 128:
  sbz_setup_defaults(codec);
  break;
 case 132:
  ae5_setup_defaults(codec);
  break;
 default:
  ca0132_setup_defaults(codec);
  ca0132_init_analog_mic2(codec);
  ca0132_init_dmic(codec);
  break;
 }

 for (i = 0; i < spec->num_outputs; i++)
  init_output(codec, spec->out_pins[i], spec->dacs[0]);

 init_output(codec, cfg->dig_out_pins[0], spec->dig_out);

 for (i = 0; i < spec->num_inputs; i++)
  init_input(codec, spec->input_pins[i], spec->adcs[i]);

 init_input(codec, cfg->dig_in_pin, spec->dig_in);

 if (!ca0132_use_alt_functions(spec)) {
  snd_hda_sequence_write(codec, spec->chip_init_verbs);
  snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0,
       VENDOR_CHIPIO_PARAM_EX_ID_SET, 0x0D);
  snd_hda_codec_write(codec, WIDGET_CHIP_CTRL, 0,
       VENDOR_CHIPIO_PARAM_EX_VALUE_SET, 0x20);
 }

 if (ca0132_quirk(spec) == 129)
  ca0132_gpio_setup(codec);

 snd_hda_sequence_write(codec, spec->spec_init_verbs);
 if (ca0132_use_alt_functions(spec)) {
  ca0132_alt_select_out(codec);
  ca0132_alt_select_in(codec);
 } else {
  ca0132_select_out(codec);
  ca0132_select_mic(codec);
 }

 snd_hda_jack_report_sync(codec);





 if (spec->dsp_reload) {
  spec->dsp_reload = 0;
  ca0132_pe_switch_set(codec);
 }

 snd_hda_power_down_pm(codec);

 return 0;
}
