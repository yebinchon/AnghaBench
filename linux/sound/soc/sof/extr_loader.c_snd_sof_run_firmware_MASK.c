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
struct snd_sof_dev {int boot_complete; int enabled_cores_mask; int /*<<< orphan*/  dev; int /*<<< orphan*/  boot_timeout; int /*<<< orphan*/  boot_wait; int /*<<< orphan*/  fw_version; scalar_t__ first_boot; } ;

/* Variables and functions */
 int EIO ; 
 int SOF_DBG_MBOX ; 
 int SOF_DBG_PCI ; 
 int SOF_DBG_REGS ; 
 int SOF_DBG_TEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct snd_sof_dev*,int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_sof_dev*,int) ; 
 int FUNC7 (struct snd_sof_dev*) ; 
 int FUNC8 (struct snd_sof_dev*) ; 
 int FUNC9 (struct snd_sof_dev*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC11(struct snd_sof_dev *sdev)
{
	int ret;
	int init_core_mask;

	FUNC3(&sdev->boot_wait);
	sdev->boot_complete = false;

	/* create read-only fw_version debugfs to store boot version info */
	if (sdev->first_boot) {
		ret = FUNC5(sdev, &sdev->fw_version,
					       sizeof(sdev->fw_version),
					       "fw_version", 0444);
		/* errors are only due to memory allocation, not debugfs */
		if (ret < 0) {
			FUNC1(sdev->dev, "error: snd_sof_debugfs_buf_item failed\n");
			return ret;
		}
	}

	/* perform pre fw run operations */
	ret = FUNC8(sdev);
	if (ret < 0) {
		FUNC1(sdev->dev, "error: failed pre fw run op\n");
		return ret;
	}

	FUNC0(sdev->dev, "booting DSP firmware\n");

	/* boot the firmware on the DSP */
	ret = FUNC9(sdev);
	if (ret < 0) {
		FUNC1(sdev->dev, "error: failed to reset DSP\n");
		return ret;
	}

	init_core_mask = ret;

	/* now wait for the DSP to boot */
	ret = FUNC10(sdev->boot_wait, sdev->boot_complete,
				 FUNC4(sdev->boot_timeout));
	if (ret == 0) {
		FUNC1(sdev->dev, "error: firmware boot failure\n");
		FUNC6(sdev, SOF_DBG_REGS | SOF_DBG_MBOX |
			SOF_DBG_TEXT | SOF_DBG_PCI);
		/* after this point FW_READY msg should be ignored */
		sdev->boot_complete = true;
		return -EIO;
	}

	FUNC2(sdev->dev, "firmware boot complete\n");

	/* perform post fw run operations */
	ret = FUNC7(sdev);
	if (ret < 0) {
		FUNC1(sdev->dev, "error: failed post fw run op\n");
		return ret;
	}

	/* fw boot is complete. Update the active cores mask */
	sdev->enabled_cores_mask = init_core_mask;

	return 0;
}