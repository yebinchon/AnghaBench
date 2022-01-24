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
struct sst_generic_ipc {int /*<<< orphan*/  dsp; } ;

/* Variables and functions */
 int /*<<< orphan*/  SKL_ADSP_REG_HIPCCTL ; 
 int /*<<< orphan*/  SKL_ADSP_REG_HIPCCTL_BUSY ; 
 int /*<<< orphan*/  SKL_ADSP_REG_HIPCCTL_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sst_generic_ipc*) ; 

void FUNC2(struct sst_generic_ipc *ipc)
{
	/* Disable IPC DONE interrupt */
	FUNC0(ipc->dsp, SKL_ADSP_REG_HIPCCTL,
		SKL_ADSP_REG_HIPCCTL_DONE, 0);

	/* Disable IPC BUSY interrupt */
	FUNC0(ipc->dsp, SKL_ADSP_REG_HIPCCTL,
		SKL_ADSP_REG_HIPCCTL_BUSY, 0);

	FUNC1(ipc);
}