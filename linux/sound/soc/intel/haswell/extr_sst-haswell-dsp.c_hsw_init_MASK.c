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
struct TYPE_2__ {scalar_t__ pci_cfg; int /*<<< orphan*/  shim_offset; int /*<<< orphan*/  dsp_dram_offset; int /*<<< orphan*/  dsp_iram_offset; int /*<<< orphan*/  iram_offset; } ;
struct sst_dsp {int id; TYPE_1__ addr; struct device* dma_dev; } ;
struct sst_adsp_memregion {int start; int end; int blocks; int /*<<< orphan*/  type; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sst_adsp_memregion*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENODEV ; 
#define  SST_DEV_ID_LYNX_POINT 129 
#define  SST_DEV_ID_WILDCAT_POINT 128 
 int /*<<< orphan*/  SST_LPT_DSP_DRAM_OFFSET ; 
 int /*<<< orphan*/  SST_LPT_DSP_IRAM_OFFSET ; 
 int /*<<< orphan*/  SST_LP_IRAM_OFFSET ; 
 int /*<<< orphan*/  SST_LP_SHIM_OFFSET ; 
 int SST_VDRTCL0_DSRAMPGE_SHIFT ; 
 scalar_t__ SST_VDRTCTL0 ; 
 int /*<<< orphan*/  SST_WPT_DSP_DRAM_OFFSET ; 
 int /*<<< orphan*/  SST_WPT_DSP_IRAM_OFFSET ; 
 int /*<<< orphan*/  SST_WPT_IRAM_OFFSET ; 
 int /*<<< orphan*/  SST_WPT_SHIM_OFFSET ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sst_dsp*,struct sst_pdata*) ; 
 int FUNC5 (struct sst_dsp*) ; 
 struct sst_adsp_memregion* lp_region ; 
 int /*<<< orphan*/  sst_hsw_ops ; 
 int /*<<< orphan*/  FUNC6 (struct sst_dsp*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct sst_dsp*) ; 
 struct sst_adsp_memregion* wpt_region ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct sst_dsp *sst, struct sst_pdata *pdata)
{
	const struct sst_adsp_memregion *region;
	struct device *dev;
	int ret = -ENODEV, i, j, region_count;
	u32 offset, size, fw_dump_bit;

	dev = sst->dma_dev;

	switch (sst->id) {
	case SST_DEV_ID_LYNX_POINT:
		region = lp_region;
		region_count = FUNC0(lp_region);
		sst->addr.iram_offset = SST_LP_IRAM_OFFSET;
		sst->addr.dsp_iram_offset = SST_LPT_DSP_IRAM_OFFSET;
		sst->addr.dsp_dram_offset = SST_LPT_DSP_DRAM_OFFSET;
		sst->addr.shim_offset = SST_LP_SHIM_OFFSET;
		break;
	case SST_DEV_ID_WILDCAT_POINT:
		region = wpt_region;
		region_count = FUNC0(wpt_region);
		sst->addr.iram_offset = SST_WPT_IRAM_OFFSET;
		sst->addr.dsp_iram_offset = SST_WPT_DSP_IRAM_OFFSET;
		sst->addr.dsp_dram_offset = SST_WPT_DSP_DRAM_OFFSET;
		sst->addr.shim_offset = SST_WPT_SHIM_OFFSET;
		break;
	default:
		FUNC2(dev, "error: failed to get mem resources\n");
		return ret;
	}

	ret = FUNC4(sst, pdata);
	if (ret < 0) {
		FUNC2(dev, "error: failed to map resources\n");
		return ret;
	}

	/* enable the DSP SHIM */
	ret = FUNC5(sst);
	if (ret < 0) {
		FUNC2(dev, "error: failed to set DSP D0 and reset SHIM\n");
		return ret;
	}

	ret = FUNC3(dev, FUNC1(31));
	if (ret)
		return ret;


	/* register DSP memory blocks - ideally we should get this from ACPI */
	for (i = 0; i < region_count; i++) {
		offset = region[i].start;
		size = (region[i].end - region[i].start) / region[i].blocks;

		/* register individual memory blocks */
		for (j = 0; j < region[i].blocks; j++) {
			FUNC6(sst, offset, size,
				region[i].type, &sst_hsw_ops, j, sst);
			offset += size;
		}
	}

	/* always enable the block(DSRAM[0]) used for FW dump */
	fw_dump_bit = 1 << SST_VDRTCL0_DSRAMPGE_SHIFT;
	/* set default power gating control, enable power gating control for all blocks. that is,
	can't be accessed, please enable each block before accessing. */
	FUNC7(0xffffffff & ~fw_dump_bit, sst->addr.pci_cfg + SST_VDRTCTL0);

	return 0;
}