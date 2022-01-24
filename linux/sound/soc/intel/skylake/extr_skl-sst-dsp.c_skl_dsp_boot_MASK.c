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
 int /*<<< orphan*/  SKL_DSP_CORE0_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC1 (struct sst_dsp*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sst_dsp*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sst_dsp*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sst_dsp*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sst_dsp*,int /*<<< orphan*/ ) ; 

int FUNC6(struct sst_dsp *ctx)
{
	int ret;

	if (FUNC1(ctx, SKL_DSP_CORE0_MASK)) {
		ret = FUNC4(ctx, SKL_DSP_CORE0_MASK);
		if (ret < 0) {
			FUNC0(ctx->dev, "dsp core0 reset fail: %d\n", ret);
			return ret;
		}

		ret = FUNC5(ctx, SKL_DSP_CORE0_MASK);
		if (ret < 0) {
			FUNC0(ctx->dev, "dsp core0 start fail: %d\n", ret);
			return ret;
		}
	} else {
		ret = FUNC2(ctx, SKL_DSP_CORE0_MASK);
		if (ret < 0) {
			FUNC0(ctx->dev, "dsp core0 disable fail: %d\n", ret);
			return ret;
		}
		ret = FUNC3(ctx, SKL_DSP_CORE0_MASK);
	}

	return ret;
}