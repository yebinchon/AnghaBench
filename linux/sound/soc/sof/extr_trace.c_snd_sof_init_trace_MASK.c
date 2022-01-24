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
struct TYPE_4__ {int /*<<< orphan*/  bytes; int /*<<< orphan*/  area; } ;
struct snd_sof_dev {int dtrace_is_enabled; int dma_trace_pages; TYPE_1__ dmatp; TYPE_1__ dmatb; int /*<<< orphan*/  trace_sleep; scalar_t__ first_boot; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BUF_SIZE_FOR_TRACE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV_SG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (struct snd_sof_dev*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct snd_sof_dev*) ; 
 int FUNC7 (struct snd_sof_dev*) ; 

int FUNC8(struct snd_sof_dev *sdev)
{
	int ret;

	/* set false before start initialization */
	sdev->dtrace_is_enabled = false;

	/* allocate trace page table buffer */
	ret = FUNC3(SNDRV_DMA_TYPE_DEV, sdev->dev,
				  PAGE_SIZE, &sdev->dmatp);
	if (ret < 0) {
		FUNC1(sdev->dev,
			"error: can't alloc page table for trace %d\n", ret);
		return ret;
	}

	/* allocate trace data buffer */
	ret = FUNC3(SNDRV_DMA_TYPE_DEV_SG, sdev->dev,
				  DMA_BUF_SIZE_FOR_TRACE, &sdev->dmatb);
	if (ret < 0) {
		FUNC1(sdev->dev,
			"error: can't alloc buffer for trace %d\n", ret);
		goto page_err;
	}

	/* create compressed page table for audio firmware */
	ret = FUNC5(sdev, &sdev->dmatb, sdev->dmatp.area,
					sdev->dmatb.bytes);
	if (ret < 0)
		goto table_err;

	sdev->dma_trace_pages = ret;
	FUNC0(sdev->dev, "dma_trace_pages: %d\n", sdev->dma_trace_pages);

	if (sdev->first_boot) {
		ret = FUNC7(sdev);
		if (ret < 0)
			goto table_err;
	}

	FUNC2(&sdev->trace_sleep);

	ret = FUNC6(sdev);
	if (ret < 0)
		goto table_err;

	return 0;
table_err:
	sdev->dma_trace_pages = 0;
	FUNC4(&sdev->dmatb);
page_err:
	FUNC4(&sdev->dmatp);
	return ret;
}