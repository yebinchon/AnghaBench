
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sst_pdata {struct sst_byt* dsp; int fw; } ;
struct TYPE_6__ {int is_dsp_busy; int reply_msg_match; int tx_data_copy; int shim_dbg; int tx_msg; } ;
struct sst_generic_ipc {int * dsp; void* rx_data_max_size; void* tx_data_max_size; TYPE_1__ ops; struct device* dev; } ;
struct sst_fw {int dummy; } ;
struct TYPE_8__ {int time; int date; } ;
struct TYPE_7__ {int type; int build; int minor; int major; } ;
struct sst_byt_fw_init {TYPE_3__ build_info; TYPE_2__ fw_version; } ;
struct sst_byt {int * dsp; struct sst_fw* fw; struct device* dev; int boot_complete; int boot_wait; int stream_list; struct sst_generic_ipc ipc; } ;
struct device {int dummy; } ;
typedef int init ;
struct TYPE_9__ {struct sst_byt* thread_context; } ;


 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IPC_BOOT_MSECS ;
 void* IPC_MAX_MAILBOX_BYTES ;
 TYPE_4__ byt_dev ;
 int byt_is_dsp_busy ;
 int byt_reply_msg_match ;
 int byt_shim_dbg ;
 int byt_tx_data_copy ;
 int byt_tx_msg ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*,int ,...) ;
 struct sst_byt* devm_kzalloc (struct device*,int,int ) ;
 int init_waitqueue_head (int *) ;
 int msecs_to_jiffies (int ) ;
 int sst_dsp_boot (int *) ;
 int sst_dsp_free (int *) ;
 int sst_dsp_inbox_read (int *,struct sst_byt_fw_init*,int) ;
 int * sst_dsp_new (struct device*,TYPE_4__*,struct sst_pdata*) ;
 int sst_dsp_reset (int *) ;
 int sst_fw_free (struct sst_fw*) ;
 struct sst_fw* sst_fw_new (int *,int ,struct sst_byt*) ;
 int sst_ipc_fini (struct sst_generic_ipc*) ;
 int sst_ipc_init (struct sst_generic_ipc*) ;
 int wait_event_timeout (int ,int ,int ) ;

int sst_byt_dsp_init(struct device *dev, struct sst_pdata *pdata)
{
 struct sst_byt *byt;
 struct sst_generic_ipc *ipc;
 struct sst_fw *byt_sst_fw;
 struct sst_byt_fw_init init;
 int err;

 dev_dbg(dev, "initialising Byt DSP IPC\n");

 byt = devm_kzalloc(dev, sizeof(*byt), GFP_KERNEL);
 if (byt == ((void*)0))
  return -ENOMEM;

 byt->dev = dev;

 ipc = &byt->ipc;
 ipc->dev = dev;
 ipc->ops.tx_msg = byt_tx_msg;
 ipc->ops.shim_dbg = byt_shim_dbg;
 ipc->ops.tx_data_copy = byt_tx_data_copy;
 ipc->ops.reply_msg_match = byt_reply_msg_match;
 ipc->ops.is_dsp_busy = byt_is_dsp_busy;
 ipc->tx_data_max_size = IPC_MAX_MAILBOX_BYTES;
 ipc->rx_data_max_size = IPC_MAX_MAILBOX_BYTES;

 err = sst_ipc_init(ipc);
 if (err != 0)
  goto ipc_init_err;

 INIT_LIST_HEAD(&byt->stream_list);
 init_waitqueue_head(&byt->boot_wait);
 byt_dev.thread_context = byt;


 byt->dsp = sst_dsp_new(dev, &byt_dev, pdata);
 if (byt->dsp == ((void*)0)) {
  err = -ENODEV;
  goto dsp_new_err;
 }

 ipc->dsp = byt->dsp;


 sst_dsp_reset(byt->dsp);

 byt_sst_fw = sst_fw_new(byt->dsp, pdata->fw, byt);
 if (byt_sst_fw == ((void*)0)) {
  err = -ENODEV;
  dev_err(dev, "error: failed to load firmware\n");
  goto fw_err;
 }


 sst_dsp_boot(byt->dsp);
 err = wait_event_timeout(byt->boot_wait, byt->boot_complete,
     msecs_to_jiffies(IPC_BOOT_MSECS));
 if (err == 0) {
  err = -EIO;
  dev_err(byt->dev, "ipc: error DSP boot timeout\n");
  goto boot_err;
 }


 sst_dsp_inbox_read(byt->dsp, &init, sizeof(init));
 dev_info(byt->dev, "FW version: %02x.%02x.%02x.%02x\n",
   init.fw_version.major, init.fw_version.minor,
   init.fw_version.build, init.fw_version.type);
 dev_info(byt->dev, "Build type: %x\n", init.fw_version.type);
 dev_info(byt->dev, "Build date: %s %s\n",
   init.build_info.date, init.build_info.time);

 pdata->dsp = byt;
 byt->fw = byt_sst_fw;

 return 0;

boot_err:
 sst_dsp_reset(byt->dsp);
 sst_fw_free(byt_sst_fw);
fw_err:
 sst_dsp_free(byt->dsp);
dsp_new_err:
 sst_ipc_fini(ipc);
ipc_init_err:

 return err;
}
