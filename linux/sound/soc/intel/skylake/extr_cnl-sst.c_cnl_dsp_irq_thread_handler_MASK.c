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
 int CNL_ADSPIS_IPC ; 
 int /*<<< orphan*/  CNL_ADSP_REG_HIPCCTL ; 
 int /*<<< orphan*/  CNL_ADSP_REG_HIPCCTL_DONE ; 
 int /*<<< orphan*/  CNL_ADSP_REG_HIPCIDA ; 
 int CNL_ADSP_REG_HIPCIDA_DONE ; 
 int /*<<< orphan*/  CNL_ADSP_REG_HIPCTDA ; 
 int CNL_ADSP_REG_HIPCTDA_DONE ; 
 int /*<<< orphan*/  CNL_ADSP_REG_HIPCTDD ; 
 int /*<<< orphan*/  CNL_ADSP_REG_HIPCTDR ; 
 int CNL_ADSP_REG_HIPCTDR_BUSY ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC1 (struct sst_dsp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sst_generic_ipc*,struct skl_ipc_header) ; 
 int /*<<< orphan*/  FUNC5 (struct sst_generic_ipc*,struct skl_ipc_header) ; 
 struct skl_dev* FUNC6 (struct sst_dsp*) ; 
 int FUNC7 (struct sst_dsp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sst_dsp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sst_dsp*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *context)
{
	struct sst_dsp *dsp = context;
	struct skl_dev *cnl = FUNC6(dsp);
	struct sst_generic_ipc *ipc = &cnl->ipc;
	struct skl_ipc_header header = {0};
	u32 hipcida, hipctdr, hipctdd;
	int ipc_irq = 0;

	/* here we handle ipc interrupts only */
	if (!(dsp->intr_status & CNL_ADSPIS_IPC))
		return IRQ_NONE;

	hipcida = FUNC7(dsp, CNL_ADSP_REG_HIPCIDA);
	hipctdr = FUNC7(dsp, CNL_ADSP_REG_HIPCTDR);
	hipctdd = FUNC7(dsp, CNL_ADSP_REG_HIPCTDD);

	/* reply message from dsp */
	if (hipcida & CNL_ADSP_REG_HIPCIDA_DONE) {
		FUNC8(dsp, CNL_ADSP_REG_HIPCCTL,
			CNL_ADSP_REG_HIPCCTL_DONE, 0);

		/* clear done bit - tell dsp operation is complete */
		FUNC9(dsp, CNL_ADSP_REG_HIPCIDA,
			CNL_ADSP_REG_HIPCIDA_DONE, CNL_ADSP_REG_HIPCIDA_DONE);

		ipc_irq = 1;

		/* unmask done interrupt */
		FUNC8(dsp, CNL_ADSP_REG_HIPCCTL,
			CNL_ADSP_REG_HIPCCTL_DONE, CNL_ADSP_REG_HIPCCTL_DONE);
	}

	/* new message from dsp */
	if (hipctdr & CNL_ADSP_REG_HIPCTDR_BUSY) {
		header.primary = hipctdr;
		header.extension = hipctdd;
		FUNC2(dsp->dev, "IPC irq: Firmware respond primary:%x",
						header.primary);
		FUNC2(dsp->dev, "IPC irq: Firmware respond extension:%x",
						header.extension);

		if (FUNC0(header.primary)) {
			/* Handle Immediate reply from DSP Core */
			FUNC5(ipc, header);
		} else {
			FUNC2(dsp->dev, "IPC irq: Notification from firmware\n");
			FUNC4(ipc, header);
		}
		/* clear busy interrupt */
		FUNC9(dsp, CNL_ADSP_REG_HIPCTDR,
			CNL_ADSP_REG_HIPCTDR_BUSY, CNL_ADSP_REG_HIPCTDR_BUSY);

		/* set done bit to ack dsp */
		FUNC9(dsp, CNL_ADSP_REG_HIPCTDA,
			CNL_ADSP_REG_HIPCTDA_DONE, CNL_ADSP_REG_HIPCTDA_DONE);
		ipc_irq = 1;
	}

	if (ipc_irq == 0)
		return IRQ_NONE;

	FUNC1(dsp);

	/* continue to send any remaining messages */
	FUNC3(&ipc->kwork);

	return IRQ_HANDLED;
}