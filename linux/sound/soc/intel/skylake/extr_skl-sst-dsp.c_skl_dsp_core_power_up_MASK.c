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
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  SKL_ADSP_REG_ADSPCS ; 
 int /*<<< orphan*/  SKL_DSP_PU_TO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int FUNC3 (struct sst_dsp*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct sst_dsp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sst_dsp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct sst_dsp *ctx, unsigned int core_mask)
{
	int ret;

	/* update bits */
	FUNC5(ctx, SKL_ADSP_REG_ADSPCS,
			FUNC1(core_mask),
			FUNC1(core_mask));

	/* poll with timeout to check if operation successful */
	ret = FUNC3(ctx,
			SKL_ADSP_REG_ADSPCS,
			FUNC0(core_mask),
			FUNC0(core_mask),
			SKL_DSP_PU_TO,
			"Power up");

	if ((FUNC4(ctx, SKL_ADSP_REG_ADSPCS) &
			FUNC0(core_mask)) !=
			FUNC0(core_mask)) {
		FUNC2(ctx->dev, "DSP core power up failed: core_mask %x\n",
				core_mask);
		ret = -EIO;
	}

	return ret;
}