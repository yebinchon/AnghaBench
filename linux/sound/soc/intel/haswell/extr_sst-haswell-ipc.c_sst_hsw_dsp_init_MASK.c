#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct sst_pdata {struct sst_hsw* dsp; } ;
struct sst_hsw_ipc_fw_version {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  is_dsp_busy; int /*<<< orphan*/  reply_msg_match; int /*<<< orphan*/  tx_data_copy; int /*<<< orphan*/  shim_dbg; int /*<<< orphan*/  tx_msg; } ;
struct sst_generic_ipc {TYPE_2__* dsp; void* rx_data_max_size; void* tx_data_max_size; TYPE_1__ ops; struct device* dev; } ;
struct sst_hsw {TYPE_2__* dsp; int /*<<< orphan*/  dx_context_paddr; int /*<<< orphan*/ * dx_context; struct device* dev; int /*<<< orphan*/  boot_complete; int /*<<< orphan*/  boot_wait; int /*<<< orphan*/  stream_list; struct sst_generic_ipc ipc; } ;
struct device {int dummy; } ;
struct TYPE_13__ {struct sst_hsw* thread_context; } ;
struct TYPE_12__ {int /*<<< orphan*/  dma_dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IPC_BOOT_MSECS ; 
 void* IPC_MAX_MAILBOX_BYTES ; 
 int /*<<< orphan*/  SST_HSW_DX_CONTEXT_SIZE ; 
 int /*<<< orphan*/  SST_HSW_MODULE_BASE_FW ; 
 int /*<<< orphan*/  SST_HSW_MODULE_WAVES ; 
 int /*<<< orphan*/  SST_IPCD ; 
 int /*<<< orphan*/  SST_IPCX ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 struct sst_hsw* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_6__ hsw_dev ; 
 int /*<<< orphan*/  hsw_is_dsp_busy ; 
 int /*<<< orphan*/  hsw_reply_msg_match ; 
 int /*<<< orphan*/  hsw_shim_dbg ; 
 int /*<<< orphan*/  hsw_tx_data_copy ; 
 int /*<<< orphan*/  hsw_tx_msg ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 TYPE_2__* FUNC11 (struct device*,TYPE_6__*,struct sst_pdata*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (struct sst_hsw*,struct sst_hsw_ipc_fw_version*) ; 
 int /*<<< orphan*/  FUNC16 (struct sst_hsw*) ; 
 int FUNC17 (struct sst_hsw*) ; 
 int FUNC18 (struct sst_hsw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (struct sst_hsw*) ; 
 int /*<<< orphan*/  FUNC20 (struct sst_generic_ipc*) ; 
 int FUNC21 (struct sst_generic_ipc*) ; 
 int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC23(struct device *dev, struct sst_pdata *pdata)
{
	struct sst_hsw_ipc_fw_version version;
	struct sst_hsw *hsw;
	struct sst_generic_ipc *ipc;
	int ret;

	FUNC1(dev, "initialising Audio DSP IPC\n");

	hsw = FUNC3(dev, sizeof(*hsw), GFP_KERNEL);
	if (hsw == NULL)
		return -ENOMEM;

	hsw->dev = dev;

	ipc = &hsw->ipc;
	ipc->dev = dev;
	ipc->ops.tx_msg = hsw_tx_msg;
	ipc->ops.shim_dbg = hsw_shim_dbg;
	ipc->ops.tx_data_copy = hsw_tx_data_copy;
	ipc->ops.reply_msg_match = hsw_reply_msg_match;
	ipc->ops.is_dsp_busy = hsw_is_dsp_busy;

	ipc->tx_data_max_size = IPC_MAX_MAILBOX_BYTES;
	ipc->rx_data_max_size = IPC_MAX_MAILBOX_BYTES;

	ret = FUNC21(ipc);
	if (ret != 0)
		goto ipc_init_err;

	FUNC0(&hsw->stream_list);
	FUNC6(&hsw->boot_wait);
	hsw_dev.thread_context = hsw;

	/* init SST shim */
	hsw->dsp = FUNC11(dev, &hsw_dev, pdata);
	if (hsw->dsp == NULL) {
		ret = -ENODEV;
		goto dsp_new_err;
	}

	ipc->dsp = hsw->dsp;

	/* allocate DMA buffer for context storage */
	hsw->dx_context = FUNC4(hsw->dsp->dma_dev,
		SST_HSW_DX_CONTEXT_SIZE, &hsw->dx_context_paddr, GFP_KERNEL);
	if (hsw->dx_context == NULL) {
		ret = -ENOMEM;
		goto dma_err;
	}

	/* keep the DSP in reset state for base FW loading */
	FUNC12(hsw->dsp);

	/* load base module and other modules in base firmware image */
	ret = FUNC18(hsw, SST_HSW_MODULE_BASE_FW, 0, "Base");
	if (ret < 0)
		goto fw_err;

	/* try to load module waves */
	FUNC18(hsw, SST_HSW_MODULE_WAVES, 0, "intel/IntcPP01.bin");

	/* allocate scratch mem regions */
	ret = FUNC8(hsw->dsp);
	if (ret < 0)
		goto boot_err;

	/* init param buffer */
	FUNC19(hsw);

	/* wait for DSP boot completion */
	FUNC9(hsw->dsp);
	ret = FUNC22(hsw->boot_wait, hsw->boot_complete,
		FUNC7(IPC_BOOT_MSECS));
	if (ret == 0) {
		ret = -EIO;
		FUNC2(hsw->dev, "error: audio DSP boot timeout IPCD 0x%x IPCX 0x%x\n",
			FUNC13(hsw->dsp, SST_IPCD),
			FUNC13(hsw->dsp, SST_IPCX));
		goto boot_err;
	}

	/* init module state after boot */
	FUNC16(hsw);

	/* get the FW version */
	FUNC15(hsw, &version);

	/* get the globalmixer */
	ret = FUNC17(hsw);
	if (ret < 0) {
		FUNC2(hsw->dev, "error: failed to get stream info\n");
		goto boot_err;
	}

	pdata->dsp = hsw;
	return 0;

boot_err:
	FUNC12(hsw->dsp);
	FUNC14(hsw->dsp);
fw_err:
	FUNC5(hsw->dsp->dma_dev, SST_HSW_DX_CONTEXT_SIZE,
			hsw->dx_context, hsw->dx_context_paddr);
dma_err:
	FUNC10(hsw->dsp);
dsp_new_err:
	FUNC20(ipc);
ipc_init_err:
	return ret;
}