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
struct sst_fw {int /*<<< orphan*/  dmable_fw_paddr; scalar_t__ dma_buf; int /*<<< orphan*/  size; int /*<<< orphan*/  list; struct sst_dsp* dsp; } ;
struct sst_dsp {int /*<<< orphan*/  dma_dev; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sst_fw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct sst_fw *sst_fw)
{
	struct sst_dsp *dsp = sst_fw->dsp;

	FUNC3(&dsp->mutex);
	FUNC2(&sst_fw->list);
	FUNC4(&dsp->mutex);

	if (sst_fw->dma_buf)
		FUNC0(dsp->dma_dev, sst_fw->size, sst_fw->dma_buf,
			sst_fw->dmable_fw_paddr);
	FUNC1(sst_fw);
}