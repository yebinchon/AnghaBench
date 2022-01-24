#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u64 ;
struct snd_sof_dev {int /*<<< orphan*/  ipc_lock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  BYT_DSP_BAR ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ MBOX_OFFSET ; 
 int SHIM_BYT_IPCD_BUSY ; 
 int SHIM_BYT_IPCX_DONE ; 
 int /*<<< orphan*/  SHIM_IMRX ; 
 int SHIM_IMRX_BUSY ; 
 int SHIM_IMRX_DONE ; 
 int /*<<< orphan*/  SHIM_IPCD ; 
 int /*<<< orphan*/  SHIM_IPCX ; 
 int SOF_IPC_PANIC_MAGIC ; 
 int SOF_IPC_PANIC_MAGIC_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct snd_sof_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_sof_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_sof_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_sof_dev*,scalar_t__) ; 
 int FUNC5 (struct snd_sof_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_sof_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_sof_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_sof_dev*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *context)
{
	struct snd_sof_dev *sdev = context;
	u64 ipcx, ipcd;
	u64 imrx;

	imrx = FUNC5(sdev, BYT_DSP_BAR, SHIM_IMRX);
	ipcx = FUNC5(sdev, BYT_DSP_BAR, SHIM_IPCX);

	/* reply message from DSP */
	if (ipcx & SHIM_BYT_IPCX_DONE &&
	    !(imrx & SHIM_IMRX_DONE)) {
		/* Mask Done interrupt before first */
		FUNC6(sdev, BYT_DSP_BAR,
						   SHIM_IMRX,
						   SHIM_IMRX_DONE,
						   SHIM_IMRX_DONE);

		FUNC9(&sdev->ipc_lock);

		/*
		 * handle immediate reply from DSP core. If the msg is
		 * found, set done bit in cmd_done which is called at the
		 * end of message processing function, else set it here
		 * because the done bit can't be set in cmd_done function
		 * which is triggered by msg
		 */
		FUNC2(sdev);
		FUNC8(sdev, ipcx);

		FUNC1(sdev);

		FUNC10(&sdev->ipc_lock);
	}

	/* new message from DSP */
	ipcd = FUNC5(sdev, BYT_DSP_BAR, SHIM_IPCD);
	if (ipcd & SHIM_BYT_IPCD_BUSY &&
	    !(imrx & SHIM_IMRX_BUSY)) {
		/* Mask Busy interrupt before return */
		FUNC6(sdev, BYT_DSP_BAR,
						   SHIM_IMRX,
						   SHIM_IMRX_BUSY,
						   SHIM_IMRX_BUSY);

		/* Handle messages from DSP Core */
		if ((ipcd & SOF_IPC_PANIC_MAGIC_MASK) == SOF_IPC_PANIC_MAGIC) {
			FUNC4(sdev, FUNC0(ipcd) +
					  MBOX_OFFSET);
		} else {
			FUNC7(sdev);
		}

		FUNC3(sdev);
	}

	return IRQ_HANDLED;
}