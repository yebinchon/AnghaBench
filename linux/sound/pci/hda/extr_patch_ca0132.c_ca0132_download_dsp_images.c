
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_codec {TYPE_1__* card; struct ca0132_spec* spec; } ;
struct firmware {scalar_t__ data; } ;
struct dsp_image_seg {int dummy; } ;
struct ca0132_spec {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int DESKTOP_EFX_FILE ;
 int EFX_FILE ;




 int R3DI_EFX_FILE ;
 int ca0132_quirk (struct ca0132_spec*) ;
 int codec_dbg (struct hda_codec*,char*) ;
 int codec_err (struct hda_codec*,char*) ;
 scalar_t__ dspload_image (struct hda_codec*,struct dsp_image_seg const*,int ,int ,int,int ) ;
 int dspload_wait_loaded (struct hda_codec*) ;
 int release_firmware (struct firmware const*) ;
 scalar_t__ request_firmware (struct firmware const**,int ,int ) ;

__attribute__((used)) static bool ca0132_download_dsp_images(struct hda_codec *codec)
{
 bool dsp_loaded = 0;
 struct ca0132_spec *spec = codec->spec;
 const struct dsp_image_seg *dsp_os_image;
 const struct firmware *fw_entry = ((void*)0);





 switch (ca0132_quirk(spec)) {
 case 128:
 case 130:
 case 131:
  if (request_firmware(&fw_entry, DESKTOP_EFX_FILE,
     codec->card->dev) != 0)
   codec_dbg(codec, "Desktop firmware not found.");
  else
   codec_dbg(codec, "Desktop firmware selected.");
  break;
 case 129:
  if (request_firmware(&fw_entry, R3DI_EFX_FILE,
     codec->card->dev) != 0)
   codec_dbg(codec, "Recon3Di alt firmware not detected.");
  else
   codec_dbg(codec, "Recon3Di firmware selected.");
  break;
 default:
  break;
 }




 if (!fw_entry) {
  codec_dbg(codec, "Default firmware selected.");
  if (request_firmware(&fw_entry, EFX_FILE,
     codec->card->dev) != 0)
   return 0;
 }

 dsp_os_image = (struct dsp_image_seg *)(fw_entry->data);
 if (dspload_image(codec, dsp_os_image, 0, 0, 1, 0)) {
  codec_err(codec, "ca0132 DSP load image failed\n");
  goto exit_download;
 }

 dsp_loaded = dspload_wait_loaded(codec);

exit_download:
 release_firmware(fw_entry);

 return dsp_loaded;
}
