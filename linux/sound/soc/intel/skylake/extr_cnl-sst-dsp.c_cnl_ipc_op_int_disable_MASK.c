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
struct sst_dsp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CNL_ADSP_REG_HIPCCTL ; 
 int /*<<< orphan*/  CNL_ADSP_REG_HIPCCTL_BUSY ; 
 int /*<<< orphan*/  CNL_ADSP_REG_HIPCCTL_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct sst_dsp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct sst_dsp *ctx)
{
	/* disable IPC DONE interrupt */
	FUNC0(ctx, CNL_ADSP_REG_HIPCCTL,
				 CNL_ADSP_REG_HIPCCTL_DONE, 0);

	/* disable IPC BUSY interrupt */
	FUNC0(ctx, CNL_ADSP_REG_HIPCCTL,
				 CNL_ADSP_REG_HIPCCTL_BUSY, 0);
}