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
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SACR0 ; 
 scalar_t__ SACR0_RST ; 
 int SACR1 ; 
 int SACR1_DREC ; 
 int SACR1_DRPL ; 
 int SAIMR ; 
 int SAIMR_RFS ; 
 int SAIMR_TFS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  clk_i2s ; 
 int /*<<< orphan*/  pxa2xx_i2s_pcm_stereo_in ; 
 int /*<<< orphan*/  pxa2xx_i2s_pcm_stereo_out ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_dai*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dai *dai)
{
	clk_i2s = FUNC2(dai->dev, "I2SCLK");
	if (FUNC0(clk_i2s))
		return FUNC1(clk_i2s);

	/*
	 * PXA Developer's Manual:
	 * If SACR0[ENB] is toggled in the middle of a normal operation,
	 * the SACR0[RST] bit must also be set and cleared to reset all
	 * I2S controller registers.
	 */
	SACR0 = SACR0_RST;
	SACR0 = 0;
	/* Make sure RPL and REC are disabled */
	SACR1 = SACR1_DRPL | SACR1_DREC;
	/* Along with FIFO servicing */
	SAIMR &= ~(SAIMR_RFS | SAIMR_TFS);

	FUNC3(dai, &pxa2xx_i2s_pcm_stereo_out,
		&pxa2xx_i2s_pcm_stereo_in);

	return 0;
}