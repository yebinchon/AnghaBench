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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CL_SD_CTL_DEIE_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CL_SD_CTL_FEIE_MASK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CL_SD_CTL_IOCE_MASK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CL_SD_CTL_STRM_MASK ; 
 int /*<<< orphan*/  SKL_ADSP_REG_CL_SD_BDLPL ; 
 int /*<<< orphan*/  SKL_ADSP_REG_CL_SD_BDLPU ; 
 int /*<<< orphan*/  SKL_ADSP_REG_CL_SD_CBL ; 
 int /*<<< orphan*/  SKL_ADSP_REG_CL_SD_CTL ; 
 int /*<<< orphan*/  SKL_ADSP_REG_CL_SD_LVI ; 
 int /*<<< orphan*/  FUNC5 (struct sst_dsp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sst_dsp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sst_dsp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct sst_dsp  *ctx)
{
	/* make sure Run bit is cleared before setting stream register */
	FUNC5(ctx, 0);

	FUNC6(ctx, SKL_ADSP_REG_CL_SD_CTL,
				CL_SD_CTL_IOCE_MASK, FUNC3(0));
	FUNC6(ctx, SKL_ADSP_REG_CL_SD_CTL,
				CL_SD_CTL_FEIE_MASK, FUNC2(0));
	FUNC6(ctx, SKL_ADSP_REG_CL_SD_CTL,
				CL_SD_CTL_DEIE_MASK, FUNC1(0));
	FUNC6(ctx, SKL_ADSP_REG_CL_SD_CTL,
				CL_SD_CTL_STRM_MASK, FUNC4(0));

	FUNC7(ctx, SKL_ADSP_REG_CL_SD_BDLPL, FUNC0(0));
	FUNC7(ctx, SKL_ADSP_REG_CL_SD_BDLPU, 0);

	FUNC7(ctx, SKL_ADSP_REG_CL_SD_CBL, 0);
	FUNC7(ctx, SKL_ADSP_REG_CL_SD_LVI, 0);
}