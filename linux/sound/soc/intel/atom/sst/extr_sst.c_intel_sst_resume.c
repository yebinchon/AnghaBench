
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stream_info {scalar_t__ resume_status; scalar_t__ status; int resume_prev; int prev; } ;
struct sst_fw_save {int ddr; int iram; int dram; int sram; } ;
struct sst_block {int dummy; } ;
struct TYPE_6__ {int max_streams; } ;
struct intel_sst_drv {int dev; struct stream_info* streams; TYPE_3__ info; TYPE_2__* pdata; TYPE_1__* ops; scalar_t__ ddr_base; scalar_t__ ddr_end; int ddr; int mailbox; scalar_t__ dram_base; scalar_t__ dram_end; int dram; scalar_t__ iram_base; scalar_t__ iram_end; int iram; struct sst_fw_save* fw_save; } ;
struct device {int dummy; } ;
struct TYPE_5__ {scalar_t__ streams_lost_on_suspend; } ;
struct TYPE_4__ {int (* start ) (struct intel_sst_drv*) ;int (* reset ) (struct intel_sst_drv*) ;} ;


 int EBUSY ;
 int ENOMEM ;
 int FW_DWNL_ID ;
 int SST_FW_LOADING ;
 int SST_FW_RUNNING ;
 scalar_t__ SST_MAILBOX_SIZE ;
 scalar_t__ STREAM_UN_INIT ;
 int dev_dbg (int ,char*,int,scalar_t__,int ) ;
 int dev_err (int ,char*,int) ;
 struct intel_sst_drv* dev_get_drvdata (struct device*) ;
 int kfree (struct sst_fw_save*) ;
 int kvfree (int ) ;
 int memcpy32_toio (int ,int ,scalar_t__) ;
 struct sst_block* sst_create_block (struct intel_sst_drv*,int ,int ) ;
 int sst_free_block (struct intel_sst_drv*,struct sst_block*) ;
 int sst_realloc_stream (struct intel_sst_drv*,int) ;
 int sst_set_fw_state_locked (struct intel_sst_drv*,int ) ;
 int sst_wait_timeout (struct intel_sst_drv*,struct sst_block*) ;
 int stub1 (struct intel_sst_drv*) ;
 int stub2 (struct intel_sst_drv*) ;

__attribute__((used)) static int intel_sst_resume(struct device *dev)
{
 struct intel_sst_drv *ctx = dev_get_drvdata(dev);
 struct sst_fw_save *fw_save = ctx->fw_save;
 struct sst_block *block;
 int i, ret = 0;

 if (!fw_save)
  return 0;

 sst_set_fw_state_locked(ctx, SST_FW_LOADING);


 ctx->ops->reset(ctx);

 ctx->fw_save = ((void*)0);

 memcpy32_toio(ctx->iram, fw_save->iram, ctx->iram_end - ctx->iram_base);
 memcpy32_toio(ctx->dram, fw_save->dram, ctx->dram_end - ctx->dram_base);
 memcpy32_toio(ctx->mailbox, fw_save->sram, SST_MAILBOX_SIZE);
 memcpy32_toio(ctx->ddr, fw_save->ddr, ctx->ddr_end - ctx->ddr_base);

 kvfree(fw_save->sram);
 kvfree(fw_save->dram);
 kvfree(fw_save->iram);
 kvfree(fw_save->ddr);
 kfree(fw_save);

 block = sst_create_block(ctx, 0, FW_DWNL_ID);
 if (block == ((void*)0))
  return -ENOMEM;



 ctx->ops->start(ctx);
 ret = sst_wait_timeout(ctx, block);
 if (ret) {
  dev_err(ctx->dev, "fw download failed %d\n", ret);

  ret = -EBUSY;

 } else {
  sst_set_fw_state_locked(ctx, SST_FW_RUNNING);
 }

 if (ctx->pdata->streams_lost_on_suspend) {
  for (i = 1; i <= ctx->info.max_streams; i++) {
   struct stream_info *stream = &ctx->streams[i];

   if (stream->resume_status != STREAM_UN_INIT) {
    dev_dbg(ctx->dev, "Re-allocing stream %d status %d prev %d\n",
     i, stream->resume_status,
     stream->resume_prev);
    sst_realloc_stream(ctx, i);
    stream->status = stream->resume_status;
    stream->prev = stream->resume_prev;
   }
  }
 }

 sst_free_block(ctx, block);
 return ret;
}
