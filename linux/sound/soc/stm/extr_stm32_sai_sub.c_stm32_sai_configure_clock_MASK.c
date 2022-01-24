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
struct stm32_sai_sub_data {int mclk_rate; int fs_length; int /*<<< orphan*/  regmap; int /*<<< orphan*/  pdata; int /*<<< orphan*/  sai_ck; int /*<<< orphan*/  sai_mclk; } ;
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int SAI_XCR1_OSR ; 
 int /*<<< orphan*/  STM_SAI_CR1_REGX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct stm32_sai_sub_data*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct stm32_sai_sub_data* FUNC6 (struct snd_soc_dai*) ; 
 int FUNC7 (struct stm32_sai_sub_data*,int,int) ; 
 int FUNC8 (struct stm32_sai_sub_data*,int) ; 
 int FUNC9 (struct stm32_sai_sub_data*,unsigned int) ; 

__attribute__((used)) static int FUNC10(struct snd_soc_dai *cpu_dai,
				     struct snd_pcm_hw_params *params)
{
	struct stm32_sai_sub_data *sai = FUNC6(cpu_dai);
	int div = 0, cr1 = 0;
	int sai_clk_rate, mclk_ratio, den;
	unsigned int rate = FUNC4(params);
	int ret;

	if (!sai->sai_mclk) {
		ret = FUNC9(sai, rate);
		if (ret)
			return ret;
	}
	sai_clk_rate = FUNC2(sai->sai_ck);

	if (FUNC0(sai->pdata)) {
		/* mclk on (NODIV=0)
		 *   mclk_rate = 256 * fs
		 *   MCKDIV = 0 if sai_ck < 3/2 * mclk_rate
		 *   MCKDIV = sai_ck / (2 * mclk_rate) otherwise
		 * mclk off (NODIV=1)
		 *   MCKDIV ignored. sck = sai_ck
		 */
		if (!sai->mclk_rate)
			return 0;

		if (2 * sai_clk_rate >= 3 * sai->mclk_rate) {
			div = FUNC7(sai, sai_clk_rate,
						    2 * sai->mclk_rate);
			if (div < 0)
				return div;
		}
	} else {
		/*
		 * TDM mode :
		 *   mclk on
		 *      MCKDIV = sai_ck / (ws x 256)	(NOMCK=0. OSR=0)
		 *      MCKDIV = sai_ck / (ws x 512)	(NOMCK=0. OSR=1)
		 *   mclk off
		 *      MCKDIV = sai_ck / (frl x ws)	(NOMCK=1)
		 * Note: NOMCK/NODIV correspond to same bit.
		 */
		if (FUNC1(sai)) {
			div = FUNC7(sai, sai_clk_rate,
						    rate * 128);
			if (div < 0)
				return div;
		} else {
			if (sai->mclk_rate) {
				mclk_ratio = sai->mclk_rate / rate;
				if (mclk_ratio == 512) {
					cr1 = SAI_XCR1_OSR;
				} else if (mclk_ratio != 256) {
					FUNC3(cpu_dai->dev,
						"Wrong mclk ratio %d\n",
						mclk_ratio);
					return -EINVAL;
				}

				FUNC5(sai->regmap,
						   STM_SAI_CR1_REGX,
						   SAI_XCR1_OSR, cr1);

				div = FUNC7(sai, sai_clk_rate,
							    sai->mclk_rate);
				if (div < 0)
					return div;
			} else {
				/* mclk-fs not set, master clock not active */
				den = sai->fs_length * FUNC4(params);
				div = FUNC7(sai, sai_clk_rate,
							    den);
				if (div < 0)
					return div;
			}
		}
	}

	return FUNC8(sai, div);
}