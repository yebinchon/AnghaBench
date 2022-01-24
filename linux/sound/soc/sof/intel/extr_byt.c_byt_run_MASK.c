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
struct snd_sof_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BYT_DSP_BAR ; 
 int ENODEV ; 
 int SHIM_BYT_CSR_PWAITMODE ; 
 int /*<<< orphan*/  SHIM_BYT_CSR_STALL ; 
 int /*<<< orphan*/  SHIM_CSR ; 
 int SOF_DBG_MBOX ; 
 int SOF_DBG_REGS ; 
 int /*<<< orphan*/  FUNC0 (struct snd_sof_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct snd_sof_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_sof_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct snd_sof_dev *sdev)
{
	int tries = 10;

	/* release stall and wait to unstall */
	FUNC4(sdev, BYT_DSP_BAR, SHIM_CSR,
				  SHIM_BYT_CSR_STALL, 0x0);
	while (tries--) {
		if (!(FUNC3(sdev, BYT_DSP_BAR, SHIM_CSR) &
		      SHIM_BYT_CSR_PWAITMODE))
			break;
		FUNC2(100);
	}
	if (tries < 0) {
		FUNC1(sdev->dev, "error:  unable to run DSP firmware\n");
		FUNC0(sdev, SOF_DBG_REGS | SOF_DBG_MBOX);
		return -ENODEV;
	}

	/* return init core mask */
	return 1;
}