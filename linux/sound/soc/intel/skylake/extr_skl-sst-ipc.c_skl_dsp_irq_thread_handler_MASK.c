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
struct sst_dsp {int intr_status; int /*<<< orphan*/  dev; } ;
struct skl_ipc_header {int primary; int extension; int /*<<< orphan*/  member_0; } ;
struct skl_dev {struct sst_generic_ipc ipc; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int SKL_ADSPIS_CL_DMA ; 
 int SKL_ADSPIS_IPC ; 
 int /*<<< orphan*/  SKL_ADSP_REG_HIPCCTL ; 
 int /*<<< orphan*/  SKL_ADSP_REG_HIPCCTL_DONE ; 
 int /*<<< orphan*/  SKL_ADSP_REG_HIPCIE ; 
 int SKL_ADSP_REG_HIPCIE_DONE ; 
 int /*<<< orphan*/  SKL_ADSP_REG_HIPCT ; 
 int /*<<< orphan*/  SKL_ADSP_REG_HIPCTE ; 
 int SKL_ADSP_REG_HIPCT_BUSY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sst_dsp*) ; 
 int /*<<< orphan*/  FUNC4 (struct sst_dsp*) ; 
 int /*<<< orphan*/  FUNC5 (struct sst_generic_ipc*,struct skl_ipc_header) ; 
 int /*<<< orphan*/  FUNC6 (struct sst_generic_ipc*,struct skl_ipc_header) ; 
 struct skl_dev* FUNC7 (struct sst_dsp*) ; 
 int FUNC8 (struct sst_dsp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sst_dsp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sst_dsp*,int /*<<< orphan*/ ,int,int) ; 

irqreturn_t FUNC11(int irq, void *context)
{
	struct sst_dsp *dsp = context;
	struct skl_dev *skl = FUNC7(dsp);
	struct sst_generic_ipc *ipc = &skl->ipc;
	struct skl_ipc_header header = {0};
	u32 hipcie, hipct, hipcte;
	int ipc_irq = 0;

	if (dsp->intr_status & SKL_ADSPIS_CL_DMA)
		FUNC3(dsp);

	/* Here we handle IPC interrupts only */
	if (!(dsp->intr_status & SKL_ADSPIS_IPC))
		return IRQ_NONE;

	hipcie = FUNC8(dsp, SKL_ADSP_REG_HIPCIE);
	hipct = FUNC8(dsp, SKL_ADSP_REG_HIPCT);
	hipcte = FUNC8(dsp, SKL_ADSP_REG_HIPCTE);

	/* reply message from DSP */
	if (hipcie & SKL_ADSP_REG_HIPCIE_DONE) {
		FUNC9(dsp, SKL_ADSP_REG_HIPCCTL,
			SKL_ADSP_REG_HIPCCTL_DONE, 0);

		/* clear DONE bit - tell DSP we have completed the operation */
		FUNC10(dsp, SKL_ADSP_REG_HIPCIE,
			SKL_ADSP_REG_HIPCIE_DONE, SKL_ADSP_REG_HIPCIE_DONE);

		ipc_irq = 1;

		/* unmask Done interrupt */
		FUNC9(dsp, SKL_ADSP_REG_HIPCCTL,
			SKL_ADSP_REG_HIPCCTL_DONE, SKL_ADSP_REG_HIPCCTL_DONE);
	}

	/* New message from DSP */
	if (hipct & SKL_ADSP_REG_HIPCT_BUSY) {
		header.primary = hipct;
		header.extension = hipcte;
		FUNC1(dsp->dev, "IPC irq: Firmware respond primary:%x\n",
						header.primary);
		FUNC1(dsp->dev, "IPC irq: Firmware respond extension:%x\n",
						header.extension);

		if (FUNC0(header.primary)) {
			/* Handle Immediate reply from DSP Core */
			FUNC6(ipc, header);
		} else {
			FUNC1(dsp->dev, "IPC irq: Notification from firmware\n");
			FUNC5(ipc, header);
		}
		/* clear  busy interrupt */
		FUNC10(dsp, SKL_ADSP_REG_HIPCT,
			SKL_ADSP_REG_HIPCT_BUSY, SKL_ADSP_REG_HIPCT_BUSY);
		ipc_irq = 1;
	}

	if (ipc_irq == 0)
		return IRQ_NONE;

	FUNC4(dsp);

	/* continue to send any remaining messages... */
	FUNC2(&ipc->kwork);

	return IRQ_HANDLED;
}