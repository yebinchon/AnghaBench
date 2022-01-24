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
typedef  int /*<<< orphan*/  u32 ;
struct sof_ipc_fw_ready {int dummy; } ;
struct snd_sof_dev {int /*<<< orphan*/  first_boot; int /*<<< orphan*/  dev; struct sof_ipc_fw_ready fw_ready; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SOF_FW_BLK_TYPE_SRAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct snd_sof_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct snd_sof_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_sof_dev*,int,int) ; 
 int FUNC5 (struct snd_sof_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_sof_dev*,int,int,struct sof_ipc_fw_ready*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_sof_dev*) ; 

int FUNC8(struct snd_sof_dev *sdev, u32 msg_id)
{
	struct sof_ipc_fw_ready *fw_ready = &sdev->fw_ready;
	int offset;
	int bar;
	int ret;

	/* mailbox must be on 4k boundary */
	offset = FUNC3(sdev);
	if (offset < 0) {
		FUNC1(sdev->dev, "error: have no mailbox offset\n");
		return offset;
	}

	bar = FUNC2(sdev, SOF_FW_BLK_TYPE_SRAM);
	if (bar < 0) {
		FUNC1(sdev->dev, "error: have no bar mapping\n");
		return -EINVAL;
	}

	FUNC0(sdev->dev, "ipc: DSP is ready 0x%8.8x offset 0x%x\n",
		msg_id, offset);

	/* no need to re-check version/ABI for subsequent boots */
	if (!sdev->first_boot)
		return 0;

	/* copy data from the DSP FW ready offset */
	FUNC6(sdev, bar, offset, fw_ready, sizeof(*fw_ready));

	/* make sure ABI version is compatible */
	ret = FUNC5(sdev);
	if (ret < 0)
		return ret;

	/* now check for extended data */
	FUNC4(sdev, bar, offset +
				  sizeof(struct sof_ipc_fw_ready));

	FUNC7(sdev);

	return 0;
}