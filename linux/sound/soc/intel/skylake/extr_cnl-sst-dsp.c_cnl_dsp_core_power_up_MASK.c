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
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  CNL_ADSP_REG_ADSPCS ; 
 int /*<<< orphan*/  CNL_DSP_PU_TO ; 
 int FUNC2 (struct sst_dsp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sst_dsp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sst_dsp *ctx, unsigned int core_mask)
{
	/* update bits */
	FUNC3(ctx, CNL_ADSP_REG_ADSPCS,
					  FUNC1(core_mask),
					  FUNC1(core_mask));

	/* poll with timeout to check if operation successful */
	return FUNC2(ctx, CNL_ADSP_REG_ADSPCS,
				    FUNC0(core_mask),
				    FUNC0(core_mask),
				    CNL_DSP_PU_TO,
				    "Power up");
}