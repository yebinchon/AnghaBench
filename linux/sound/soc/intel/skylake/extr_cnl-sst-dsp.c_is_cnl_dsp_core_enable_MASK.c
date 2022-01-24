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
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  CNL_ADSP_REG_ADSPCS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,unsigned int) ; 
 int FUNC5 (struct sst_dsp*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(struct sst_dsp *ctx, unsigned int core_mask)
{
	int val;
	bool is_enable;

	val = FUNC5(ctx, CNL_ADSP_REG_ADSPCS);

	is_enable = (val & FUNC0(core_mask)) &&
			(val & FUNC3(core_mask)) &&
			!(val & FUNC1(core_mask)) &&
			!(val & FUNC2(core_mask));

	FUNC4(ctx->dev, "DSP core(s) enabled? %d: core_mask %#x\n",
		is_enable, core_mask);

	return is_enable;
}