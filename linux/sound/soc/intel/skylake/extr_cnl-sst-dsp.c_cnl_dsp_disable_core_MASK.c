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
 int FUNC0 (struct sst_dsp*,unsigned int) ; 
 int FUNC1 (struct sst_dsp*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 scalar_t__ FUNC3 (struct sst_dsp*,unsigned int) ; 

int FUNC4(struct sst_dsp *ctx, unsigned int core_mask)
{
	int ret;

	ret = FUNC1(ctx, core_mask);
	if (ret < 0) {
		FUNC2(ctx->dev, "DSP core mask %#x reset failed\n",
			core_mask);
		return ret;
	}

	/* power down core*/
	ret = FUNC0(ctx, core_mask);
	if (ret < 0) {
		FUNC2(ctx->dev, "DSP core mask %#x power down failed\n",
			core_mask);
		return ret;
	}

	if (FUNC3(ctx, core_mask)) {
		FUNC2(ctx->dev, "DSP core mask %#x disable failed\n",
			core_mask);
		ret = -EIO;
	}

	return ret;
}