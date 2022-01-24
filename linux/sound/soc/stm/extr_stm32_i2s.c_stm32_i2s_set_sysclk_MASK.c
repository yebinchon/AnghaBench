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
struct stm32_i2s_data {unsigned int mclk_rate; int /*<<< orphan*/  regmap; } ;
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2S_CGFR_MCKOE ; 
 int SND_SOC_CLOCK_OUT ; 
 int /*<<< orphan*/  STM32_I2S_CGFR_REG ; 
 scalar_t__ FUNC0 (struct stm32_i2s_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct stm32_i2s_data* FUNC3 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dai *cpu_dai,
				int clk_id, unsigned int freq, int dir)
{
	struct stm32_i2s_data *i2s = FUNC3(cpu_dai);

	FUNC1(cpu_dai->dev, "I2S MCLK frequency is %uHz\n", freq);

	if ((dir == SND_SOC_CLOCK_OUT) && FUNC0(i2s)) {
		i2s->mclk_rate = freq;

		/* Enable master clock if master mode and mclk-fs are set */
		return FUNC2(i2s->regmap, STM32_I2S_CGFR_REG,
					  I2S_CGFR_MCKOE, I2S_CGFR_MCKOE);
	}

	return 0;
}