
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sst_dsp {TYPE_1__* fw; int dev; int fw_name; struct skl_dev* thread_context; } ;
struct skl_dev {int fw_loaded; int boot_complete; int boot_wait; scalar_t__ is_first_boot; } ;
struct firmware {int size; int data; } ;
struct TYPE_4__ {int size; int data; } ;


 int CNL_ADSP_FW_HDR_OFFSET ;
 int EIO ;
 int SKL_DSP_CORE0_MASK ;
 int SKL_IPC_BOOT_MSECS ;
 int cnl_dsp_disable_core (struct sst_dsp*,int ) ;
 int cnl_prepare_fw (struct sst_dsp*,int ,int ) ;
 int dev_err (int ,char*,...) ;
 int msecs_to_jiffies (int ) ;
 int release_firmware (TYPE_1__*) ;
 int request_firmware (TYPE_1__**,int ,int ) ;
 int skl_dsp_strip_extended_manifest (struct firmware*) ;
 int snd_skl_parse_uuids (struct sst_dsp*,TYPE_1__*,int ,int ) ;
 int sst_transfer_fw_host_dma (struct sst_dsp*) ;
 int wait_event_timeout (int ,int ,int ) ;

__attribute__((used)) static int cnl_load_base_firmware(struct sst_dsp *ctx)
{
 struct firmware stripped_fw;
 struct skl_dev *cnl = ctx->thread_context;
 int ret;

 if (!ctx->fw) {
  ret = request_firmware(&ctx->fw, ctx->fw_name, ctx->dev);
  if (ret < 0) {
   dev_err(ctx->dev, "request firmware failed: %d\n", ret);
   goto cnl_load_base_firmware_failed;
  }
 }


 if (cnl->is_first_boot) {
  ret = snd_skl_parse_uuids(ctx, ctx->fw,
       CNL_ADSP_FW_HDR_OFFSET, 0);
  if (ret < 0)
   goto cnl_load_base_firmware_failed;
 }

 stripped_fw.data = ctx->fw->data;
 stripped_fw.size = ctx->fw->size;
 skl_dsp_strip_extended_manifest(&stripped_fw);

 ret = cnl_prepare_fw(ctx, stripped_fw.data, stripped_fw.size);
 if (ret < 0) {
  dev_err(ctx->dev, "prepare firmware failed: %d\n", ret);
  goto cnl_load_base_firmware_failed;
 }

 ret = sst_transfer_fw_host_dma(ctx);
 if (ret < 0) {
  dev_err(ctx->dev, "transfer firmware failed: %d\n", ret);
  cnl_dsp_disable_core(ctx, SKL_DSP_CORE0_MASK);
  goto cnl_load_base_firmware_failed;
 }

 ret = wait_event_timeout(cnl->boot_wait, cnl->boot_complete,
     msecs_to_jiffies(SKL_IPC_BOOT_MSECS));
 if (ret == 0) {
  dev_err(ctx->dev, "FW ready timed-out\n");
  cnl_dsp_disable_core(ctx, SKL_DSP_CORE0_MASK);
  ret = -EIO;
  goto cnl_load_base_firmware_failed;
 }

 cnl->fw_loaded = 1;

 return 0;

cnl_load_base_firmware_failed:
 release_firmware(ctx->fw);
 ctx->fw = ((void*)0);

 return ret;
}
