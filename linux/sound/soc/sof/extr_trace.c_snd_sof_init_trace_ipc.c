
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sof_ipc_reply {int dummy; } ;
struct sof_ipc_fw_version {scalar_t__ abi_version; } ;
struct sof_ipc_fw_ready {struct sof_ipc_fw_version version; } ;
struct TYPE_8__ {int size; int cmd; } ;
struct TYPE_7__ {scalar_t__ pages; int size; int phy_addr; } ;
struct sof_ipc_dma_trace_params_ext {TYPE_4__ hdr; scalar_t__ stream_tag; TYPE_3__ buffer; int timestamp_ns; } ;
struct sof_ipc_dma_trace_params {int dummy; } ;
struct TYPE_6__ {int bytes; } ;
struct TYPE_5__ {int addr; } ;
struct snd_sof_dev {int dtrace_is_enabled; int dtrace_draining; int dev; int ipc; scalar_t__ host_offset; scalar_t__ dma_trace_pages; TYPE_2__ dmatb; TYPE_1__ dmatp; struct sof_ipc_fw_ready fw_ready; } ;
typedef int params ;
typedef int ipc_reply ;


 int EINVAL ;
 int SNDRV_PCM_TRIGGER_START ;
 scalar_t__ SOF_ABI_VER (int,int,int ) ;
 int SOF_IPC_GLB_TRACE_MSG ;
 int SOF_IPC_TRACE_DMA_PARAMS ;
 int SOF_IPC_TRACE_DMA_PARAMS_EXT ;
 int dev_dbg (int ,char*,scalar_t__) ;
 int dev_err (int ,char*,int) ;
 int ktime_get () ;
 int snd_sof_dma_trace_init (struct snd_sof_dev*,scalar_t__*) ;
 int snd_sof_dma_trace_release (struct snd_sof_dev*) ;
 int snd_sof_dma_trace_trigger (struct snd_sof_dev*,int ) ;
 int sof_ipc_tx_message (int ,int ,struct sof_ipc_dma_trace_params_ext*,int,struct sof_ipc_reply*,int) ;

int snd_sof_init_trace_ipc(struct snd_sof_dev *sdev)
{
 struct sof_ipc_fw_ready *ready = &sdev->fw_ready;
 struct sof_ipc_fw_version *v = &ready->version;
 struct sof_ipc_dma_trace_params_ext params;
 struct sof_ipc_reply ipc_reply;
 int ret;

 if (sdev->dtrace_is_enabled || !sdev->dma_trace_pages)
  return -EINVAL;


 params.hdr.cmd = SOF_IPC_GLB_TRACE_MSG;

 if (v->abi_version >= SOF_ABI_VER(3, 7, 0)) {
  params.hdr.size = sizeof(struct sof_ipc_dma_trace_params_ext);
  params.hdr.cmd |= SOF_IPC_TRACE_DMA_PARAMS_EXT;
  params.timestamp_ns = ktime_get();
 } else {
  params.hdr.size = sizeof(struct sof_ipc_dma_trace_params);
  params.hdr.cmd |= SOF_IPC_TRACE_DMA_PARAMS;
 }
 params.buffer.phy_addr = sdev->dmatp.addr;
 params.buffer.size = sdev->dmatb.bytes;
 params.buffer.pages = sdev->dma_trace_pages;
 params.stream_tag = 0;

 sdev->host_offset = 0;
 sdev->dtrace_draining = 0;

 ret = snd_sof_dma_trace_init(sdev, &params.stream_tag);
 if (ret < 0) {
  dev_err(sdev->dev,
   "error: fail in snd_sof_dma_trace_init %d\n", ret);
  return ret;
 }
 dev_dbg(sdev->dev, "stream_tag: %d\n", params.stream_tag);


 ret = sof_ipc_tx_message(sdev->ipc,
     params.hdr.cmd, &params, sizeof(params),
     &ipc_reply, sizeof(ipc_reply));
 if (ret < 0) {
  dev_err(sdev->dev,
   "error: can't set params for DMA for trace %d\n", ret);
  goto trace_release;
 }

 ret = snd_sof_dma_trace_trigger(sdev, SNDRV_PCM_TRIGGER_START);
 if (ret < 0) {
  dev_err(sdev->dev,
   "error: snd_sof_dma_trace_trigger: start: %d\n", ret);
  goto trace_release;
 }

 sdev->dtrace_is_enabled = 1;

 return 0;

trace_release:
 snd_sof_dma_trace_release(sdev);
 return ret;
}
