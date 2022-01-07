
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* prepare ) (int ,int,int ,struct snd_dma_buffer*) ;int (* cleanup ) (int ,struct snd_dma_buffer*,int) ;int (* trigger ) (int ,int,int) ;} ;
struct sst_dsp {int dev; TYPE_1__ dsp_ops; struct skl_dev* thread_context; } ;
struct snd_dma_buffer {int area; } ;
struct skl_lib_info {int name; } ;
struct skl_dev {int ipc; int * lib_info; } ;
struct firmware {int size; int data; } ;


 int BXT_ADSP_FW_BIN_HDR_OFFSET ;
 int dev_err (int ,char*,int,...) ;
 int memcpy (int ,int ,int ) ;
 int skl_prepare_lib_load (struct skl_dev*,int *,struct firmware*,int ,int) ;
 int skl_release_library (struct skl_lib_info*,int) ;
 int skl_sst_ipc_load_library (int *,int,int,int) ;
 int stub1 (int ,int,int ,struct snd_dma_buffer*) ;
 int stub2 (int ,int,int) ;
 int stub3 (int ,int,int) ;
 int stub4 (int ,struct snd_dma_buffer*,int) ;

__attribute__((used)) static int
bxt_load_library(struct sst_dsp *ctx, struct skl_lib_info *linfo, int lib_count)
{
 struct snd_dma_buffer dmab;
 struct skl_dev *skl = ctx->thread_context;
 struct firmware stripped_fw;
 int ret = 0, i, dma_id, stream_tag;


 for (i = 1; i < lib_count; i++) {
  ret = skl_prepare_lib_load(skl, &skl->lib_info[i], &stripped_fw,
     BXT_ADSP_FW_BIN_HDR_OFFSET, i);
  if (ret < 0)
   goto load_library_failed;

  stream_tag = ctx->dsp_ops.prepare(ctx->dev, 0x40,
     stripped_fw.size, &dmab);
  if (stream_tag <= 0) {
   dev_err(ctx->dev, "Lib prepare DMA err: %x\n",
     stream_tag);
   ret = stream_tag;
   goto load_library_failed;
  }

  dma_id = stream_tag - 1;
  memcpy(dmab.area, stripped_fw.data, stripped_fw.size);

  ctx->dsp_ops.trigger(ctx->dev, 1, stream_tag);
  ret = skl_sst_ipc_load_library(&skl->ipc, dma_id, i, 1);
  if (ret < 0)
   dev_err(ctx->dev, "IPC Load Lib for %s fail: %d\n",
     linfo[i].name, ret);

  ctx->dsp_ops.trigger(ctx->dev, 0, stream_tag);
  ctx->dsp_ops.cleanup(ctx->dev, &dmab, stream_tag);
 }

 return ret;

load_library_failed:
 skl_release_library(linfo, lib_count);
 return ret;
}
