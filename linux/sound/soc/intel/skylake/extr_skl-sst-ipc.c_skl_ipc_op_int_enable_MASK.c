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
 int /*<<< orphan*/  SKL_ADSP_REG_HIPCCTL ; 
 int /*<<< orphan*/  SKL_ADSP_REG_HIPCCTL_BUSY ; 
 int /*<<< orphan*/  SKL_ADSP_REG_HIPCCTL_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct sst_dsp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct sst_dsp *ctx)
{
	/* enable IPC DONE interrupt */
	FUNC0(ctx, SKL_ADSP_REG_HIPCCTL,
		SKL_ADSP_REG_HIPCCTL_DONE, SKL_ADSP_REG_HIPCCTL_DONE);

	/* Enable IPC BUSY interrupt */
	FUNC0(ctx, SKL_ADSP_REG_HIPCCTL,
		SKL_ADSP_REG_HIPCCTL_BUSY, SKL_ADSP_REG_HIPCCTL_BUSY);
}