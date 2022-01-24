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
struct sst_dsp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  SKL_ADSP_REG_ADSPCS ; 
 int FUNC1 (struct sst_dsp*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct sst_dsp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct sst_dsp *ctx, unsigned int core_mask)
{
	/* stall core */
	FUNC2(ctx, SKL_ADSP_REG_ADSPCS,
			FUNC0(core_mask),
			FUNC0(core_mask));

	/* set reset state */
	return FUNC1(ctx, core_mask);
}