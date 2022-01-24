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
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned char CL_SD_CTL_RUN_MASK ; 
 int /*<<< orphan*/  SKL_ADSP_REG_CL_SD_CTL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned char,int) ; 
 unsigned char FUNC2 (struct sst_dsp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sst_dsp*,int /*<<< orphan*/ ,unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct sst_dsp  *ctx, bool enable)
{
	unsigned char val;
	int timeout;

	FUNC3(ctx,
			SKL_ADSP_REG_CL_SD_CTL,
			CL_SD_CTL_RUN_MASK, FUNC0(enable));

	FUNC4(3);
	timeout = 300;
	do {
		/* waiting for hardware to report that the stream Run bit set */
		val = FUNC2(ctx, SKL_ADSP_REG_CL_SD_CTL) &
			CL_SD_CTL_RUN_MASK;
		if (enable && val)
			break;
		else if (!enable && !val)
			break;
		FUNC4(3);
	} while (--timeout);

	if (timeout == 0)
		FUNC1(ctx->dev, "Failed to set Run bit=%d enable=%d\n", val, enable);
}