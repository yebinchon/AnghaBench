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
typedef  scalar_t__ u32 ;
struct snd_sof_dev {scalar_t__ dsp_oops_offset; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int SOF_DBG_MBOX ; 
 int SOF_DBG_REGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_sof_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_sof_dev*) ; 

void FUNC4(struct snd_sof_dev *sdev, u32 offset)
{
	FUNC1(sdev->dev, "error : DSP panic!\n");

	/*
	 * check if DSP is not ready and did not set the dsp_oops_offset.
	 * if the dsp_oops_offset is not set, set it from the panic message.
	 * Also add a check to memory window setting with panic message.
	 */
	if (!sdev->dsp_oops_offset)
		sdev->dsp_oops_offset = offset;
	else
		FUNC0(sdev->dev, "panic: dsp_oops_offset %zu offset %d\n",
			sdev->dsp_oops_offset, offset);

	FUNC2(sdev, SOF_DBG_REGS | SOF_DBG_MBOX);
	FUNC3(sdev);
}