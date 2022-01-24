#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sst_pdata {struct sst_hsw* dsp; } ;
struct sst_hsw {int /*<<< orphan*/  ipc; TYPE_1__* dsp; int /*<<< orphan*/  dx_context_paddr; int /*<<< orphan*/  dx_context; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dma_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SST_HSW_DX_CONTEXT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct device *dev, struct sst_pdata *pdata)
{
	struct sst_hsw *hsw = pdata->dsp;

	FUNC2(hsw->dsp);
	FUNC3(hsw->dsp);
	FUNC0(hsw->dsp->dma_dev, SST_HSW_DX_CONTEXT_SIZE,
			hsw->dx_context, hsw->dx_context_paddr);
	FUNC1(hsw->dsp);
	FUNC4(&hsw->ipc);
}