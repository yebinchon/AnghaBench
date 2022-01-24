#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sst_fw {int /*<<< orphan*/ * dma_buf; int /*<<< orphan*/  dmable_fw_paddr; int /*<<< orphan*/  size; int /*<<< orphan*/  list; void* private; struct sst_dsp* dsp; } ;
struct sst_dsp {int /*<<< orphan*/  dma_dev; scalar_t__ fw_use_dma; int /*<<< orphan*/  mutex; int /*<<< orphan*/  fw_list; int /*<<< orphan*/  dev; TYPE_1__* ops; } ;
struct firmware {int /*<<< orphan*/  size; scalar_t__ data; } ;
struct TYPE_2__ {int (* parse_fw ) (struct sst_fw*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sst_fw*) ; 
 struct sst_fw* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct sst_dsp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sst_dsp*) ; 
 int FUNC11 (struct sst_fw*) ; 

struct sst_fw *FUNC12(struct sst_dsp *dsp, 
	const struct firmware *fw, void *private)
{
	struct sst_fw *sst_fw;
	int err;

	if (!dsp->ops->parse_fw)
		return NULL;

	sst_fw = FUNC4(sizeof(*sst_fw), GFP_KERNEL);
	if (sst_fw == NULL)
		return NULL;

	sst_fw->dsp = dsp;
	sst_fw->private = private;
	sst_fw->size = fw->size;

	/* allocate DMA buffer to store FW data */
	sst_fw->dma_buf = FUNC1(dsp->dma_dev, sst_fw->size,
				&sst_fw->dmable_fw_paddr, GFP_KERNEL);
	if (!sst_fw->dma_buf) {
		FUNC0(dsp->dev, "error: DMA alloc failed\n");
		FUNC3(sst_fw);
		return NULL;
	}

	/* copy FW data to DMA-able memory */
	FUNC6((void *)sst_fw->dma_buf, (void *)fw->data, fw->size);

	if (dsp->fw_use_dma) {
		err = FUNC9(dsp, 0);
		if (err < 0)
			goto chan_err;
	}

	/* call core specific FW paser to load FW data into DSP */
	err = dsp->ops->parse_fw(sst_fw);
	if (err < 0) {
		FUNC0(dsp->dev, "error: parse fw failed %d\n", err);
		goto parse_err;
	}

	if (dsp->fw_use_dma)
		FUNC10(dsp);

	FUNC7(&dsp->mutex);
	FUNC5(&sst_fw->list, &dsp->fw_list);
	FUNC8(&dsp->mutex);

	return sst_fw;

parse_err:
	if (dsp->fw_use_dma)
		FUNC10(dsp);
chan_err:
	FUNC2(dsp->dma_dev, sst_fw->size,
				sst_fw->dma_buf,
				sst_fw->dmable_fw_paddr);
	sst_fw->dma_buf = NULL;
	FUNC3(sst_fw);
	return NULL;
}