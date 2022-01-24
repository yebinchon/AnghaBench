#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sst_pdata {struct sst_byt* dsp; int /*<<< orphan*/  fw; } ;
struct TYPE_6__ {int /*<<< orphan*/  is_dsp_busy; int /*<<< orphan*/  reply_msg_match; int /*<<< orphan*/  tx_data_copy; int /*<<< orphan*/  shim_dbg; int /*<<< orphan*/  tx_msg; } ;
struct sst_generic_ipc {int /*<<< orphan*/ * dsp; void* rx_data_max_size; void* tx_data_max_size; TYPE_1__ ops; struct device* dev; } ;
struct sst_fw {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  time; int /*<<< orphan*/  date; } ;
struct TYPE_7__ {int /*<<< orphan*/  type; int /*<<< orphan*/  build; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; } ;
struct sst_byt_fw_init {TYPE_3__ build_info; TYPE_2__ fw_version; } ;
struct sst_byt {int /*<<< orphan*/ * dsp; struct sst_fw* fw; struct device* dev; int /*<<< orphan*/  boot_complete; int /*<<< orphan*/  boot_wait; int /*<<< orphan*/  stream_list; struct sst_generic_ipc ipc; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  init ;
struct TYPE_9__ {struct sst_byt* thread_context; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IPC_BOOT_MSECS ; 
 void* IPC_MAX_MAILBOX_BYTES ; 
 TYPE_4__ byt_dev ; 
 int /*<<< orphan*/  byt_is_dsp_busy ; 
 int /*<<< orphan*/  byt_reply_msg_match ; 
 int /*<<< orphan*/  byt_shim_dbg ; 
 int /*<<< orphan*/  byt_tx_data_copy ; 
 int /*<<< orphan*/  byt_tx_msg ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ,...) ; 
 struct sst_byt* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct sst_byt_fw_init*,int) ; 
 int /*<<< orphan*/ * FUNC10 (struct device*,TYPE_4__*,struct sst_pdata*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct sst_fw*) ; 
 struct sst_fw* FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sst_byt*) ; 
 int /*<<< orphan*/  FUNC14 (struct sst_generic_ipc*) ; 
 int FUNC15 (struct sst_generic_ipc*) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC17(struct device *dev, struct sst_pdata *pdata)
{
	struct sst_byt *byt;
	struct sst_generic_ipc *ipc;
	struct sst_fw *byt_sst_fw;
	struct sst_byt_fw_init init;
	int err;

	FUNC1(dev, "initialising Byt DSP IPC\n");

	byt = FUNC4(dev, sizeof(*byt), GFP_KERNEL);
	if (byt == NULL)
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

	err = FUNC15(ipc);
	if (err != 0)
		goto ipc_init_err;

	FUNC0(&byt->stream_list);
	FUNC5(&byt->boot_wait);
	byt_dev.thread_context = byt;

	/* init SST shim */
	byt->dsp = FUNC10(dev, &byt_dev, pdata);
	if (byt->dsp == NULL) {
		err = -ENODEV;
		goto dsp_new_err;
	}

	ipc->dsp = byt->dsp;

	/* keep the DSP in reset state for base FW loading */
	FUNC11(byt->dsp);

	byt_sst_fw = FUNC13(byt->dsp, pdata->fw, byt);
	if (byt_sst_fw  == NULL) {
		err = -ENODEV;
		FUNC2(dev, "error: failed to load firmware\n");
		goto fw_err;
	}

	/* wait for DSP boot completion */
	FUNC7(byt->dsp);
	err = FUNC16(byt->boot_wait, byt->boot_complete,
				 FUNC6(IPC_BOOT_MSECS));
	if (err == 0) {
		err = -EIO;
		FUNC2(byt->dev, "ipc: error DSP boot timeout\n");
		goto boot_err;
	}

	/* show firmware information */
	FUNC9(byt->dsp, &init, sizeof(init));
	FUNC3(byt->dev, "FW version: %02x.%02x.%02x.%02x\n",
		 init.fw_version.major, init.fw_version.minor,
		 init.fw_version.build, init.fw_version.type);
	FUNC3(byt->dev, "Build type: %x\n", init.fw_version.type);
	FUNC3(byt->dev, "Build date: %s %s\n",
		 init.build_info.date, init.build_info.time);

	pdata->dsp = byt;
	byt->fw = byt_sst_fw;

	return 0;

boot_err:
	FUNC11(byt->dsp);
	FUNC12(byt_sst_fw);
fw_err:
	FUNC8(byt->dsp);
dsp_new_err:
	FUNC14(ipc);
ipc_init_err:

	return err;
}