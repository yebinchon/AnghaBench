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
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  CNL_ADSP_REG_ADSPCS ; 
 int EIO ; 
 int FUNC1 (struct sst_dsp*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct sst_dsp*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct sst_dsp*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct sst_dsp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sst_dsp *ctx, unsigned int core_mask)
{
	int ret;

	/* unset reset state */
	ret = FUNC1(ctx, core_mask);
	if (ret < 0)
		return ret;

	/* run core */
	FUNC5(ctx, CNL_ADSP_REG_ADSPCS,
				FUNC0(core_mask), 0);

	if (!FUNC4(ctx, core_mask)) {
		FUNC2(ctx, core_mask);
		FUNC3(ctx->dev, "DSP core mask %#x enable failed\n",
			core_mask);
		ret = -EIO;
	}

	return ret;
}