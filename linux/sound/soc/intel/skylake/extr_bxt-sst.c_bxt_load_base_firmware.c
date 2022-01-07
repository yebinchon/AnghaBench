
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sst_dsp {TYPE_1__* fw; int dev; int fw_name; struct skl_dev* thread_context; } ;
struct skl_dev {int fw_loaded; int boot_complete; int boot_wait; scalar_t__ is_first_boot; } ;
struct firmware {int size; int data; } ;
struct TYPE_4__ {int size; int data; } ;


 int BXT_ADSP_ERROR_CODE ;
 int BXT_ADSP_FW_BIN_HDR_OFFSET ;
 int BXT_ADSP_FW_STATUS ;
 int BXT_FW_ROM_INIT_RETRY ;
 int EIO ;
 int SKL_DSP_CORE0_MASK ;
 int SKL_IPC_BOOT_MSECS ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,...) ;
 int dev_info (int ,char*,int ,int ) ;
 int msecs_to_jiffies (int ) ;
 int release_firmware (TYPE_1__*) ;
 int request_firmware (TYPE_1__**,int ,int ) ;
 int skl_dsp_disable_core (struct sst_dsp*,int ) ;
 int skl_dsp_strip_extended_manifest (struct firmware*) ;
 int snd_skl_parse_uuids (struct sst_dsp*,TYPE_1__*,int ,int ) ;
 int sst_bxt_prepare_fw (struct sst_dsp*,int ,int ) ;
 int sst_dsp_shim_read (struct sst_dsp*,int ) ;
 int sst_transfer_fw_host_dma (struct sst_dsp*) ;
 int wait_event_timeout (int ,int ,int ) ;

__attribute__((used)) static int bxt_load_base_firmware(struct sst_dsp *ctx)
{
 struct firmware stripped_fw;
 struct skl_dev *skl = ctx->thread_context;
 int ret, i;

 if (ctx->fw == ((void*)0)) {
  ret = request_firmware(&ctx->fw, ctx->fw_name, ctx->dev);
  if (ret < 0) {
   dev_err(ctx->dev, "Request firmware failed %d\n", ret);
   return ret;
  }
 }


 if (skl->is_first_boot) {
  ret = snd_skl_parse_uuids(ctx, ctx->fw, BXT_ADSP_FW_BIN_HDR_OFFSET, 0);
  if (ret < 0)
   goto sst_load_base_firmware_failed;
 }

 stripped_fw.data = ctx->fw->data;
 stripped_fw.size = ctx->fw->size;
 skl_dsp_strip_extended_manifest(&stripped_fw);


 for (i = 0; i < BXT_FW_ROM_INIT_RETRY; i++) {
  ret = sst_bxt_prepare_fw(ctx, stripped_fw.data, stripped_fw.size);
  if (ret == 0)
   break;
 }

 if (ret < 0) {
  dev_err(ctx->dev, "Error code=0x%x: FW status=0x%x\n",
   sst_dsp_shim_read(ctx, BXT_ADSP_ERROR_CODE),
   sst_dsp_shim_read(ctx, BXT_ADSP_FW_STATUS));

  dev_err(ctx->dev, "Core En/ROM load fail:%d\n", ret);
  goto sst_load_base_firmware_failed;
 }

 ret = sst_transfer_fw_host_dma(ctx);
 if (ret < 0) {
  dev_err(ctx->dev, "Transfer firmware failed %d\n", ret);
  dev_info(ctx->dev, "Error code=0x%x: FW status=0x%x\n",
   sst_dsp_shim_read(ctx, BXT_ADSP_ERROR_CODE),
   sst_dsp_shim_read(ctx, BXT_ADSP_FW_STATUS));

  skl_dsp_disable_core(ctx, SKL_DSP_CORE0_MASK);
 } else {
  dev_dbg(ctx->dev, "Firmware download successful\n");
  ret = wait_event_timeout(skl->boot_wait, skl->boot_complete,
     msecs_to_jiffies(SKL_IPC_BOOT_MSECS));
  if (ret == 0) {
   dev_err(ctx->dev, "DSP boot fail, FW Ready timeout\n");
   skl_dsp_disable_core(ctx, SKL_DSP_CORE0_MASK);
   ret = -EIO;
  } else {
   ret = 0;
   skl->fw_loaded = 1;
  }
 }

 return ret;

sst_load_base_firmware_failed:
 release_firmware(ctx->fw);
 ctx->fw = ((void*)0);
 return ret;
}
