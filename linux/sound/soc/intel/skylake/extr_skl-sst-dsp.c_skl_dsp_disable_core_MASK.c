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
struct sst_dsp {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,...) ; 
 scalar_t__ FUNC1 (struct sst_dsp*,unsigned int) ; 
 int FUNC2 (struct sst_dsp*,unsigned int) ; 
 int FUNC3 (struct sst_dsp*,unsigned int) ; 

int FUNC4(struct sst_dsp *ctx, unsigned int core_mask)
{
	int ret;

	ret = FUNC3(ctx, core_mask);
	if (ret < 0) {
		FUNC0(ctx->dev, "dsp core reset failed: core_mask %x\n",
							core_mask);
		return ret;
	}

	/* power down core*/
	ret = FUNC2(ctx, core_mask);
	if (ret < 0) {
		FUNC0(ctx->dev, "dsp core power down fail mask %x: %d\n",
							core_mask, ret);
		return ret;
	}

	if (FUNC1(ctx, core_mask)) {
		FUNC0(ctx->dev, "dsp core disable fail mask %x: %d\n",
							core_mask, ret);
		ret = -EIO;
	}

	return ret;
}