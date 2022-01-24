#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct lx_rmh {scalar_t__ dsp_stat; int stat_len; int /*<<< orphan*/  stat; int /*<<< orphan*/  cmd_len; int /*<<< orphan*/  cmd; } ;
struct lx6464es {TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
#define  ED_DSP_CRASHED 129 
#define  ED_DSP_TIMED_OUT 128 
 int ERROR_VALUE ; 
 int ETIMEDOUT ; 
 int REG_CRM_NUMBER ; 
 int Reg_CSM_MC ; 
 int Reg_CSM_MR ; 
 int XILINX_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  eReg_CRM1 ; 
 int /*<<< orphan*/  eReg_CRM2 ; 
 int /*<<< orphan*/  eReg_CSM ; 
 int FUNC2 (struct lx6464es*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lx6464es*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct lx6464es*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct lx6464es*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct lx_rmh*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct lx6464es *chip, struct lx_rmh *rmh)
{
	u32 reg = ED_DSP_TIMED_OUT;
	int dwloop;

	if (FUNC2(chip, eReg_CSM) & (Reg_CSM_MC | Reg_CSM_MR)) {
		FUNC0(chip->card->dev, "PIOSendMessage eReg_CSM %x\n", reg);
		return -EBUSY;
	}

	/* write command */
	FUNC5(chip, eReg_CRM1, rmh->cmd, rmh->cmd_len);

	/* MicoBlaze gogogo */
	FUNC4(chip, eReg_CSM, Reg_CSM_MC);

	/* wait for device to answer */
	for (dwloop = 0; dwloop != XILINX_TIMEOUT_MS * 1000; ++dwloop) {
		if (FUNC2(chip, eReg_CSM) & Reg_CSM_MR) {
			if (rmh->dsp_stat == 0)
				reg = FUNC2(chip, eReg_CRM1);
			else
				reg = 0;
			goto polling_successful;
		} else
			FUNC8(1);
	}
	FUNC1(chip->card->dev, "TIMEOUT lx_message_send_atomic! "
		   "polling failed\n");

polling_successful:
	if ((reg & ERROR_VALUE) == 0) {
		/* read response */
		if (rmh->stat_len) {
			FUNC7(rmh->stat_len >= (REG_CRM_NUMBER-1));
			FUNC3(chip, eReg_CRM2, rmh->stat,
					   rmh->stat_len);
		}
	} else
		FUNC0(chip->card->dev, "rmh error: %08x\n", reg);

	/* clear Reg_CSM_MR */
	FUNC4(chip, eReg_CSM, 0);

	switch (reg) {
	case ED_DSP_TIMED_OUT:
		FUNC1(chip->card->dev, "lx_message_send: dsp timeout\n");
		return -ETIMEDOUT;

	case ED_DSP_CRASHED:
		FUNC1(chip->card->dev, "lx_message_send: dsp crashed\n");
		return -EAGAIN;
	}

	FUNC6(rmh);

	return reg;
}