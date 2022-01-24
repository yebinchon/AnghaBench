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
struct snd_sof_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  ipc_lock; int /*<<< orphan*/  waitq; scalar_t__ code_loading; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  CNL_DSP_REG_HIPCCTL ; 
 int /*<<< orphan*/  CNL_DSP_REG_HIPCCTL_DONE ; 
 int /*<<< orphan*/  CNL_DSP_REG_HIPCIDA ; 
 int CNL_DSP_REG_HIPCIDA_DONE ; 
 int CNL_DSP_REG_HIPCIDA_MSG_MASK ; 
 int /*<<< orphan*/  CNL_DSP_REG_HIPCIDR ; 
 int CNL_DSP_REG_HIPCIDR_MSG_MASK ; 
 int /*<<< orphan*/  CNL_DSP_REG_HIPCTDD ; 
 int CNL_DSP_REG_HIPCTDD_MSG_MASK ; 
 int /*<<< orphan*/  CNL_DSP_REG_HIPCTDR ; 
 int CNL_DSP_REG_HIPCTDR_BUSY ; 
 int CNL_DSP_REG_HIPCTDR_MSG_MASK ; 
 int /*<<< orphan*/  HDA_DSP_ADSPIC_IPC ; 
 int /*<<< orphan*/  HDA_DSP_BAR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  HDA_DSP_REG_ADSPIC ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int SOF_IPC_PANIC_MAGIC ; 
 int SOF_IPC_PANIC_MAGIC_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct snd_sof_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_sof_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_sof_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_sof_dev*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct snd_sof_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_sof_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_sof_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_sof_dev*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC14(int irq, void *context)
{
	struct snd_sof_dev *sdev = context;
	u32 hipci;
	u32 hipcida;
	u32 hipctdr;
	u32 hipctdd;
	u32 msg;
	u32 msg_ext;
	bool ipc_irq = false;

	hipcida = FUNC7(sdev, HDA_DSP_BAR, CNL_DSP_REG_HIPCIDA);
	hipctdr = FUNC7(sdev, HDA_DSP_BAR, CNL_DSP_REG_HIPCTDR);
	hipctdd = FUNC7(sdev, HDA_DSP_BAR, CNL_DSP_REG_HIPCTDD);
	hipci = FUNC7(sdev, HDA_DSP_BAR, CNL_DSP_REG_HIPCIDR);

	/* reply message from DSP */
	if (hipcida & CNL_DSP_REG_HIPCIDA_DONE) {
		msg_ext = hipci & CNL_DSP_REG_HIPCIDR_MSG_MASK;
		msg = hipcida & CNL_DSP_REG_HIPCIDA_MSG_MASK;

		FUNC4(sdev->dev,
			 "ipc: firmware response, msg:0x%x, msg_ext:0x%x\n",
			 msg, msg_ext);

		/* mask Done interrupt */
		FUNC8(sdev, HDA_DSP_BAR,
					CNL_DSP_REG_HIPCCTL,
					CNL_DSP_REG_HIPCCTL_DONE, 0);

		FUNC11(&sdev->ipc_lock);

		/* handle immediate reply from DSP core */
		FUNC5(sdev);
		FUNC10(sdev, msg);

		if (sdev->code_loading)	{
			sdev->code_loading = 0;
			FUNC13(&sdev->waitq);
		}

		FUNC1(sdev);

		FUNC12(&sdev->ipc_lock);

		ipc_irq = true;
	}

	/* new message from DSP */
	if (hipctdr & CNL_DSP_REG_HIPCTDR_BUSY) {
		msg = hipctdr & CNL_DSP_REG_HIPCTDR_MSG_MASK;
		msg_ext = hipctdd & CNL_DSP_REG_HIPCTDD_MSG_MASK;

		FUNC4(sdev->dev,
			 "ipc: firmware initiated, msg:0x%x, msg_ext:0x%x\n",
			 msg, msg_ext);

		/* handle messages from DSP */
		if ((hipctdr & SOF_IPC_PANIC_MAGIC_MASK) ==
		   SOF_IPC_PANIC_MAGIC) {
			FUNC6(sdev, FUNC0(msg_ext));
		} else {
			FUNC9(sdev);
		}

		FUNC2(sdev);

		ipc_irq = true;
	}

	if (!ipc_irq) {
		/*
		 * This interrupt is not shared so no need to return IRQ_NONE.
		 */
		FUNC3(sdev->dev,
				    "nothing to do in IPC IRQ thread\n");
	}

	/* re-enable IPC interrupt */
	FUNC8(sdev, HDA_DSP_BAR, HDA_DSP_REG_ADSPIC,
				HDA_DSP_ADSPIC_IPC, HDA_DSP_ADSPIC_IPC);

	return IRQ_HANDLED;
}