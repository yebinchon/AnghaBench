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
struct sof_ipc_panic_info {int dummy; } ;
struct sof_ipc_dsp_oops_xtensa {int dummy; } ;
struct snd_sof_dev {int /*<<< orphan*/  dev; scalar_t__ boot_complete; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDA_DSP_BAR ; 
 int /*<<< orphan*/  HDA_DSP_SRAM_REG_FW_STATUS ; 
 int /*<<< orphan*/  HDA_DSP_SRAM_REG_FW_TRACEP ; 
 int HDA_DSP_STACK_DUMP_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_sof_dev*,struct sof_ipc_dsp_oops_xtensa*,struct sof_ipc_panic_info*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_sof_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_sof_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_sof_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sof_ipc_dsp_oops_xtensa*,struct sof_ipc_panic_info*,int /*<<< orphan*/ *,int) ; 

void FUNC5(struct snd_sof_dev *sdev, u32 flags)
{
	struct sof_ipc_dsp_oops_xtensa xoops;
	struct sof_ipc_panic_info panic_info;
	u32 stack[HDA_DSP_STACK_DUMP_SIZE];
	u32 status, panic;

	/* try APL specific status message types first */
	FUNC2(sdev);

	/* now try generic SOF status messages */
	status = FUNC3(sdev, HDA_DSP_BAR,
				  HDA_DSP_SRAM_REG_FW_STATUS);
	panic = FUNC3(sdev, HDA_DSP_BAR, HDA_DSP_SRAM_REG_FW_TRACEP);

	if (sdev->boot_complete) {
		FUNC1(sdev, &xoops, &panic_info, stack,
				      HDA_DSP_STACK_DUMP_SIZE);
		FUNC4(sdev, status, panic, &xoops, &panic_info,
				   stack, HDA_DSP_STACK_DUMP_SIZE);
	} else {
		FUNC0(sdev->dev, "error: status = 0x%8.8x panic = 0x%8.8x\n",
			status, panic);
		FUNC2(sdev);
	}
}