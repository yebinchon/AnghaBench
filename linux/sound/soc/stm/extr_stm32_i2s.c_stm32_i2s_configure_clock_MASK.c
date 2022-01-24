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
typedef  int u32 ;
struct stm32_i2s_data {unsigned int mclk_rate; int fmt; int /*<<< orphan*/  regmap; int /*<<< orphan*/  i2sclk; int /*<<< orphan*/  x8kclk; int /*<<< orphan*/  x11kclk; } ;
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned long,unsigned int) ; 
 int EINVAL ; 
 int I2S_CFG2_AFCNTR ; 
 int I2S_CGFR_CHLEN ; 
 int I2S_CGFR_I2SDIV_MASK ; 
 unsigned int I2S_CGFR_I2SDIV_MAX ; 
 int FUNC1 (unsigned int) ; 
 int I2S_CGFR_ODD ; 
 int I2S_CGFR_ODD_SHIFT ; 
 int SND_SOC_DAIFMT_DSP_A ; 
 int SND_SOC_DAIFMT_FORMAT_MASK ; 
 int /*<<< orphan*/  STM32_I2S_CFG2_REG ; 
 int /*<<< orphan*/  STM32_I2S_CGFR_REG ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned int,int,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC7 (struct snd_pcm_hw_params*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct stm32_i2s_data* FUNC10 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC11(struct snd_soc_dai *cpu_dai,
				     struct snd_pcm_hw_params *params)
{
	struct stm32_i2s_data *i2s = FUNC10(cpu_dai);
	unsigned long i2s_clock_rate;
	unsigned int tmp, div, real_div, nb_bits, frame_len;
	unsigned int rate = FUNC7(params);
	int ret;
	u32 cgfr, cgfr_mask;
	bool odd;

	if (!(rate % 11025))
		FUNC3(i2s->i2sclk, i2s->x11kclk);
	else
		FUNC3(i2s->i2sclk, i2s->x8kclk);
	i2s_clock_rate = FUNC2(i2s->i2sclk);

	/*
	 * mckl = mclk_ratio x ws
	 *   i2s mode : mclk_ratio = 256
	 *   dsp mode : mclk_ratio = 128
	 *
	 * mclk on
	 *   i2s mode : div = i2s_clk / (mclk_ratio * ws)
	 *   dsp mode : div = i2s_clk / (mclk_ratio * ws)
	 * mclk off
	 *   i2s mode : div = i2s_clk / (nb_bits x ws)
	 *   dsp mode : div = i2s_clk / (nb_bits x ws)
	 */
	if (i2s->mclk_rate) {
		tmp = FUNC0(i2s_clock_rate, i2s->mclk_rate);
	} else {
		frame_len = 32;
		if ((i2s->fmt & SND_SOC_DAIFMT_FORMAT_MASK) ==
		    SND_SOC_DAIFMT_DSP_A)
			frame_len = 16;

		/* master clock not enabled */
		ret = FUNC8(i2s->regmap, STM32_I2S_CGFR_REG, &cgfr);
		if (ret < 0)
			return ret;

		nb_bits = frame_len * ((cgfr & I2S_CGFR_CHLEN) + 1);
		tmp = FUNC0(i2s_clock_rate, (nb_bits * rate));
	}

	/* Check the parity of the divider */
	odd = tmp & 0x1;

	/* Compute the div prescaler */
	div = tmp >> 1;

	cgfr = FUNC1(div) | (odd << I2S_CGFR_ODD_SHIFT);
	cgfr_mask = I2S_CGFR_I2SDIV_MASK | I2S_CGFR_ODD;

	real_div = ((2 * div) + odd);
	FUNC4(cpu_dai->dev, "I2S clk: %ld, SCLK: %d\n",
		i2s_clock_rate, rate);
	FUNC4(cpu_dai->dev, "Divider: 2*%d(div)+%d(odd) = %d\n",
		div, odd, real_div);

	if (((div == 1) && odd) || (div > I2S_CGFR_I2SDIV_MAX)) {
		FUNC5(cpu_dai->dev, "Wrong divider setting\n");
		return -EINVAL;
	}

	if (!div && !odd)
		FUNC6(cpu_dai->dev, "real divider forced to 1\n");

	ret = FUNC9(i2s->regmap, STM32_I2S_CGFR_REG,
				 cgfr_mask, cgfr);
	if (ret < 0)
		return ret;

	/* Set bitclock and frameclock to their inactive state */
	return FUNC9(i2s->regmap, STM32_I2S_CFG2_REG,
				  I2S_CFG2_AFCNTR, I2S_CFG2_AFCNTR);
}