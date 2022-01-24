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
struct ep93xx_i2s_info {int /*<<< orphan*/  mclk; int /*<<< orphan*/  sclk; int /*<<< orphan*/  lrclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SND_EP93XX_SOC_I2S_WATCHDOG ; 
 unsigned int EP93XX_I2S_GLCTRL ; 
 unsigned int EP93XX_I2S_RX0EN ; 
 unsigned int EP93XX_I2S_TX0EN ; 
 unsigned int EP93XX_I2S_TXCTRL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ep93xx_i2s_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct ep93xx_i2s_info*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ep93xx_i2s_info *info, int stream)
{
	unsigned base_reg;

	/* Disable IRQs */
	if (FUNC0(CONFIG_SND_EP93XX_SOC_I2S_WATCHDOG) &&
	    stream == SNDRV_PCM_STREAM_PLAYBACK)
		FUNC3(info, EP93XX_I2S_TXCTRL, 0);

	/* Disable fifo */
	if (stream == SNDRV_PCM_STREAM_PLAYBACK)
		base_reg = EP93XX_I2S_TX0EN;
	else
		base_reg = EP93XX_I2S_RX0EN;
	FUNC3(info, base_reg, 0);

	if ((FUNC2(info, EP93XX_I2S_TX0EN) & 0x1) == 0 &&
	    (FUNC2(info, EP93XX_I2S_RX0EN) & 0x1) == 0) {
		/* Disable i2s */
		FUNC3(info, EP93XX_I2S_GLCTRL, 0);

		/* Disable clocks */
		FUNC1(info->lrclk);
		FUNC1(info->sclk);
		FUNC1(info->mclk);
	}
}