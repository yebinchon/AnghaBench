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
typedef  int u32 ;
struct sst_pdata {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  shim_offset; int /*<<< orphan*/  dram_offset; int /*<<< orphan*/  iram_offset; } ;
struct sst_dsp {int id; int /*<<< orphan*/  dma_dev; TYPE_1__ addr; struct device* dev; } ;
struct sst_adsp_memregion {int start; int end; int blocks; int /*<<< orphan*/  type; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sst_adsp_memregion*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENODEV ; 
 int /*<<< orphan*/  SST_BYT_DRAM_OFFSET ; 
 int /*<<< orphan*/  SST_BYT_IRAM_OFFSET ; 
 int /*<<< orphan*/  SST_BYT_SHIM_OFFSET ; 
#define  SST_DEV_ID_BYT 128 
 int /*<<< orphan*/  SST_IMRD ; 
 int /*<<< orphan*/  SST_IMRX ; 
 struct sst_adsp_memregion* byt_region ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sst_dsp*,struct sst_pdata*) ; 
 int /*<<< orphan*/  FUNC5 (struct sst_dsp*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sst_dsp*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct sst_dsp*) ; 

__attribute__((used)) static int FUNC7(struct sst_dsp *sst, struct sst_pdata *pdata)
{
	const struct sst_adsp_memregion *region;
	struct device *dev;
	int ret = -ENODEV, i, j, region_count;
	u32 offset, size;

	dev = sst->dev;

	switch (sst->id) {
	case SST_DEV_ID_BYT:
		region = byt_region;
		region_count = FUNC0(byt_region);
		sst->addr.iram_offset = SST_BYT_IRAM_OFFSET;
		sst->addr.dram_offset = SST_BYT_DRAM_OFFSET;
		sst->addr.shim_offset = SST_BYT_SHIM_OFFSET;
		break;
	default:
		FUNC2(dev, "failed to get mem resources\n");
		return ret;
	}

	ret = FUNC4(sst, pdata);
	if (ret < 0) {
		FUNC2(dev, "failed to map resources\n");
		return ret;
	}

	ret = FUNC3(sst->dma_dev, FUNC1(32));
	if (ret)
		return ret;

	/* enable Interrupt from both sides */
	FUNC5(sst, SST_IMRX, 0x3, 0x0);
	FUNC5(sst, SST_IMRD, 0x3, 0x0);

	/* register DSP memory blocks - ideally we should get this from ACPI */
	for (i = 0; i < region_count; i++) {
		offset = region[i].start;
		size = (region[i].end - region[i].start) / region[i].blocks;

		/* register individual memory blocks */
		for (j = 0; j < region[i].blocks; j++) {
			FUNC6(sst, offset, size,
					       region[i].type, NULL, j, sst);
			offset += size;
		}
	}

	return 0;
}