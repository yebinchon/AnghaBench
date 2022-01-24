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
typedef  int u32 ;
struct sst_generic_ipc {int /*<<< orphan*/  kwork; } ;
struct sst_hsw {int /*<<< orphan*/  dsp; struct sst_generic_ipc ipc; } ;
struct sst_dsp {int /*<<< orphan*/  spinlock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  SST_IMRX ; 
 int SST_IMRX_BUSY ; 
 int SST_IMRX_DONE ; 
 int /*<<< orphan*/  SST_IPCD ; 
 int SST_IPCD_BUSY ; 
 int SST_IPCD_DONE ; 
 int /*<<< orphan*/  SST_IPCX ; 
 int SST_IPCX_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct sst_hsw*) ; 
 int /*<<< orphan*/  FUNC1 (struct sst_hsw*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct sst_hsw* FUNC5 (struct sst_dsp*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sst_dsp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sst_dsp*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *context)
{
	struct sst_dsp *sst = (struct sst_dsp *) context;
	struct sst_hsw *hsw = FUNC5(sst);
	struct sst_generic_ipc *ipc = &hsw->ipc;
	u32 ipcx, ipcd;
	unsigned long flags;

	FUNC3(&sst->spinlock, flags);

	ipcx = FUNC6(hsw->dsp);
	ipcd = FUNC7(sst, SST_IPCD);

	/* reply message from DSP */
	if (ipcx & SST_IPCX_DONE) {

		/* Handle Immediate reply from DSP Core */
		FUNC1(hsw, ipcx);

		/* clear DONE bit - tell DSP we have completed */
		FUNC8(sst, SST_IPCX,
			SST_IPCX_DONE, 0);

		/* unmask Done interrupt */
		FUNC8(sst, SST_IMRX,
			SST_IMRX_DONE, 0);
	}

	/* new message from DSP */
	if (ipcd & SST_IPCD_BUSY) {

		/* Handle Notification and Delayed reply from DSP Core */
		FUNC0(hsw);

		/* clear BUSY bit and set DONE bit - accept new messages */
		FUNC8(sst, SST_IPCD,
			SST_IPCD_BUSY | SST_IPCD_DONE, SST_IPCD_DONE);

		/* unmask busy interrupt */
		FUNC8(sst, SST_IMRX,
			SST_IMRX_BUSY, 0);
	}

	FUNC4(&sst->spinlock, flags);

	/* continue to send any remaining messages... */
	FUNC2(&ipc->kwork);

	return IRQ_HANDLED;
}