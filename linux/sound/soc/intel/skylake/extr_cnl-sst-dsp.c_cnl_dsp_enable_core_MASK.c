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
 int FUNC0 (struct sst_dsp*,unsigned int) ; 
 int FUNC1 (struct sst_dsp*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int) ; 

int FUNC3(struct sst_dsp *ctx, unsigned int core_mask)
{
	int ret;

	/* power up */
	ret = FUNC0(ctx, core_mask);
	if (ret < 0) {
		FUNC2(ctx->dev, "DSP core mask %#x power up failed",
			core_mask);
		return ret;
	}

	return FUNC1(ctx, core_mask);
}