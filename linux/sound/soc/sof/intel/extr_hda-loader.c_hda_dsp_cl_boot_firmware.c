
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sof_intel_dsp_desc {int init_core_mask; } ;
struct sof_dev_desc {struct sof_intel_dsp_desc* chip_info; } ;
struct snd_sof_pdata {TYPE_1__* fw; struct sof_dev_desc* desc; } ;
struct TYPE_5__ {int area; } ;
struct snd_sof_dev {int boot_complete; int dev; TYPE_2__ dmab; int boot_wait; struct snd_sof_pdata* pdata; } ;
struct hdac_ext_stream {int dummy; } ;
struct firmware {int size; int data; } ;
struct TYPE_4__ {int size; int data; } ;


 int ENODEV ;
 int HDA_DSP_BAR ;
 int HDA_DSP_PP_BAR ;
 int HDA_DSP_SRAM_REG_ROM_ERROR ;
 int HDA_DSP_SRAM_REG_ROM_STATUS ;
 int HDA_FW_BOOT_ATTEMPTS ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int SOF_DBG_MBOX ;
 int SOF_DBG_PCI ;
 int SOF_DBG_REGS ;
 int SOF_HDA_PPCTL_GPROCEN ;
 int SOF_HDA_REG_PP_PPCTL ;
 int cl_cleanup (struct snd_sof_dev*,TYPE_2__*,struct hdac_ext_stream*) ;
 int cl_copy_fw (struct snd_sof_dev*,struct hdac_ext_stream*) ;
 int cl_dsp_init (struct snd_sof_dev*,int ,int ,int) ;
 int cl_stream_prepare (struct snd_sof_dev*,int,int ,TYPE_2__*,int ) ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,...) ;
 struct hdac_ext_stream* get_stream_with_tag (struct snd_sof_dev*,int) ;
 int hda_dsp_dump (struct snd_sof_dev*,int) ;
 int init_waitqueue_head (int *) ;
 int memcpy (int ,int ,int ) ;
 int snd_sof_dsp_read (struct snd_sof_dev*,int ,int ) ;
 int snd_sof_dsp_update_bits (struct snd_sof_dev*,int ,int ,int ,int ) ;

int hda_dsp_cl_boot_firmware(struct snd_sof_dev *sdev)
{
 struct snd_sof_pdata *plat_data = sdev->pdata;
 const struct sof_dev_desc *desc = plat_data->desc;
 const struct sof_intel_dsp_desc *chip_info;
 struct hdac_ext_stream *stream;
 struct firmware stripped_firmware;
 int ret, ret1, tag, i;

 chip_info = desc->chip_info;

 stripped_firmware.data = plat_data->fw->data;
 stripped_firmware.size = plat_data->fw->size;


 init_waitqueue_head(&sdev->boot_wait);
 sdev->boot_complete = 0;


 tag = cl_stream_prepare(sdev, 0x40, stripped_firmware.size,
    &sdev->dmab, SNDRV_PCM_STREAM_PLAYBACK);

 if (tag < 0) {
  dev_err(sdev->dev, "error: dma prepare for fw loading err: %x\n",
   tag);
  return tag;
 }


 stream = get_stream_with_tag(sdev, tag);
 if (!stream) {
  dev_err(sdev->dev,
   "error: could not get stream with stream tag %d\n",
   tag);
  ret = -ENODEV;
  goto err;
 }

 memcpy(sdev->dmab.area, stripped_firmware.data,
        stripped_firmware.size);


 for (i = 0; i < HDA_FW_BOOT_ATTEMPTS; i++) {
  ret = cl_dsp_init(sdev, stripped_firmware.data,
      stripped_firmware.size, tag);


  if (!ret)
   break;

  dev_err(sdev->dev, "error: Error code=0x%x: FW status=0x%x\n",
   snd_sof_dsp_read(sdev, HDA_DSP_BAR,
      HDA_DSP_SRAM_REG_ROM_ERROR),
   snd_sof_dsp_read(sdev, HDA_DSP_BAR,
      HDA_DSP_SRAM_REG_ROM_STATUS));
  dev_err(sdev->dev, "error: iteration %d of Core En/ROM load failed: %d\n",
   i, ret);
 }

 if (i == HDA_FW_BOOT_ATTEMPTS) {
  dev_err(sdev->dev, "error: dsp init failed after %d attempts with err: %d\n",
   i, ret);
  goto cleanup;
 }





 ret = cl_copy_fw(sdev, stream);
 if (!ret)
  dev_dbg(sdev->dev, "Firmware download successful, booting...\n");
 else
  dev_err(sdev->dev, "error: load fw failed ret: %d\n", ret);

cleanup:




 ret1 = cl_cleanup(sdev, &sdev->dmab, stream);
 if (ret1 < 0) {
  dev_err(sdev->dev, "error: Code loader DSP cleanup failed\n");


  ret = ret1;
 }





 if (!ret)
  return chip_info->init_core_mask;


err:
 hda_dsp_dump(sdev, SOF_DBG_REGS | SOF_DBG_PCI | SOF_DBG_MBOX);


 snd_sof_dsp_update_bits(sdev, HDA_DSP_PP_BAR,
    SOF_HDA_REG_PP_PPCTL,
    SOF_HDA_PPCTL_GPROCEN, 0);
 return ret;
}
