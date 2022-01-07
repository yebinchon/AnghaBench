
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* init ) (struct hda_codec*) ;} ;
struct hda_codec {TYPE_1__ patch_ops; struct ca0132_spec* spec; } ;
struct ca0132_spec {int startup_check_entered; int dsp_state; } ;


 int DSP_DOWNLOAD_INIT ;
 int chipio_read (struct hda_codec*,unsigned int,unsigned int*) ;
 int codec_dbg (struct hda_codec*,char*,unsigned int) ;
 int codec_info (struct hda_codec*,char*,...) ;
 int sbz_exit_chip (struct hda_codec*) ;
 int stub1 (struct hda_codec*) ;

__attribute__((used)) static void sbz_dsp_startup_check(struct hda_codec *codec)
{
 struct ca0132_spec *spec = codec->spec;
 unsigned int dsp_data_check[4];
 unsigned int cur_address = 0x390;
 unsigned int i;
 unsigned int failure = 0;
 unsigned int reload = 3;

 if (spec->startup_check_entered)
  return;

 spec->startup_check_entered = 1;

 for (i = 0; i < 4; i++) {
  chipio_read(codec, cur_address, &dsp_data_check[i]);
  cur_address += 0x4;
 }
 for (i = 0; i < 4; i++) {
  if (dsp_data_check[i] == 0xa1a2a3a4)
   failure = 1;
 }

 codec_dbg(codec, "Startup Check: %d ", failure);
 if (failure)
  codec_info(codec, "DSP not initialized properly. Attempting to fix.");





 while (failure && (reload != 0)) {
  codec_info(codec, "Reloading... Tries left: %d", reload);
  sbz_exit_chip(codec);
  spec->dsp_state = DSP_DOWNLOAD_INIT;
  codec->patch_ops.init(codec);
  failure = 0;
  for (i = 0; i < 4; i++) {
   chipio_read(codec, cur_address, &dsp_data_check[i]);
   cur_address += 0x4;
  }
  for (i = 0; i < 4; i++) {
   if (dsp_data_check[i] == 0xa1a2a3a4)
    failure = 1;
  }
  reload--;
 }

 if (!failure && reload < 3)
  codec_info(codec, "DSP fixed.");

 if (!failure)
  return;

 codec_info(codec, "DSP failed to initialize properly. Either try a full shutdown or a suspend to clear the internal memory.");
}
