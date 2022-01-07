
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {scalar_t__ dsp_state; } ;


 scalar_t__ DSP_DOWNLOADED ;
 scalar_t__ DSP_DOWNLOADING ;
 scalar_t__ DSP_DOWNLOAD_FAILED ;
 int ca0132_download_dsp_images (struct hda_codec*) ;
 int ca0132_set_dsp_msr (struct hda_codec*,int) ;
 int ca0132_use_alt_functions (struct ca0132_spec*) ;
 int chipio_enable_clocks (struct hda_codec*) ;

__attribute__((used)) static void ca0132_download_dsp(struct hda_codec *codec)
{
 struct ca0132_spec *spec = codec->spec;


 return;


 if (spec->dsp_state == DSP_DOWNLOAD_FAILED)
  return;

 chipio_enable_clocks(codec);
 if (spec->dsp_state != DSP_DOWNLOADED) {
  spec->dsp_state = DSP_DOWNLOADING;

  if (!ca0132_download_dsp_images(codec))
   spec->dsp_state = DSP_DOWNLOAD_FAILED;
  else
   spec->dsp_state = DSP_DOWNLOADED;
 }


 if (spec->dsp_state == DSP_DOWNLOADED && !ca0132_use_alt_functions(spec))
  ca0132_set_dsp_msr(codec, 1);
}
