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
struct snd_soc_dai {struct snd_soc_component* component; struct device* dev; } ;
struct snd_soc_component {struct device* dev; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct pcm512x_priv {int bclk_ratio; int pll_p; int pll_j; int pll_d; int pll_r; unsigned long real_pll; int pll_in; int /*<<< orphan*/  regmap; int /*<<< orphan*/  sclk; int /*<<< orphan*/  pll_out; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned long,unsigned long) ; 
 int FUNC1 (unsigned long,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  PCM512x_DAC_CLKDIV ; 
 int /*<<< orphan*/  PCM512x_DAC_REF ; 
 int /*<<< orphan*/  PCM512x_DSP_CLKDIV ; 
 int /*<<< orphan*/  PCM512x_FSSP ; 
 int PCM512x_FSSP_192KHZ ; 
 int PCM512x_FSSP_384KHZ ; 
 int PCM512x_FSSP_48KHZ ; 
 int PCM512x_FSSP_96KHZ ; 
 int /*<<< orphan*/  PCM512x_FS_SPEED_MODE ; 
 int /*<<< orphan*/  PCM512x_GPIO_DACIN ; 
 int /*<<< orphan*/  PCM512x_GREF ; 
 int PCM512x_GREF_GPIO1 ; 
 int /*<<< orphan*/  PCM512x_IDAC_1 ; 
 int /*<<< orphan*/  PCM512x_IDAC_2 ; 
 int /*<<< orphan*/  PCM512x_MASTER_CLKDIV_1 ; 
 int /*<<< orphan*/  PCM512x_MASTER_CLKDIV_2 ; 
 int /*<<< orphan*/  PCM512x_NCP_CLKDIV ; 
 int /*<<< orphan*/  PCM512x_OSR_CLKDIV ; 
 int /*<<< orphan*/  PCM512x_PLL_COEFF_0 ; 
 int /*<<< orphan*/  PCM512x_PLL_COEFF_1 ; 
 int /*<<< orphan*/  PCM512x_PLL_COEFF_2 ; 
 int /*<<< orphan*/  PCM512x_PLL_COEFF_3 ; 
 int /*<<< orphan*/  PCM512x_PLL_COEFF_4 ; 
 int /*<<< orphan*/  PCM512x_SDAC ; 
 int PCM512x_SDAC_GPIO ; 
 int PCM512x_SDAC_SCK ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 int FUNC5 (struct snd_pcm_hw_params*) ; 
 unsigned long FUNC6 (struct pcm512x_priv*,int) ; 
 unsigned long FUNC7 (struct pcm512x_priv*) ; 
 int FUNC8 (struct snd_soc_dai*,unsigned long,unsigned long) ; 
 unsigned long FUNC9 (struct snd_soc_dai*,unsigned long) ; 
 unsigned long FUNC10 (struct pcm512x_priv*,unsigned long) ; 
 unsigned long FUNC11 (struct snd_soc_dai*,unsigned long,unsigned long) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct pcm512x_priv* FUNC14 (struct snd_soc_component*) ; 
 int FUNC15 (struct snd_pcm_hw_params*) ; 
 int FUNC16 (struct snd_pcm_hw_params*) ; 

__attribute__((used)) static int FUNC17(struct snd_soc_dai *dai,
				struct snd_pcm_hw_params *params)
{
	struct device *dev = dai->dev;
	struct snd_soc_component *component = dai->component;
	struct pcm512x_priv *pcm512x = FUNC14(component);
	unsigned long pllin_rate = 0;
	unsigned long pll_rate;
	unsigned long sck_rate;
	unsigned long mck_rate;
	unsigned long bclk_rate;
	unsigned long sample_rate;
	unsigned long osr_rate;
	unsigned long dacsrc_rate;
	int bclk_div;
	int lrclk_div;
	int dsp_div;
	int dac_div;
	unsigned long dac_rate;
	int ncp_div;
	int osr_div;
	int ret;
	int idac;
	int fssp;
	int gpio;

	if (pcm512x->bclk_ratio > 0) {
		lrclk_div = pcm512x->bclk_ratio;
	} else {
		lrclk_div = FUNC16(params);

		if (lrclk_div == 0) {
			FUNC4(dev, "No LRCLK?\n");
			return -EINVAL;
		}
	}

	if (!pcm512x->pll_out) {
		sck_rate = FUNC2(pcm512x->sclk);
		bclk_rate = FUNC5(params) * lrclk_div;
		bclk_div = FUNC0(sck_rate, bclk_rate);

		mck_rate = sck_rate;
	} else {
		ret = FUNC15(params);
		if (ret < 0) {
			FUNC4(dev, "Failed to find suitable BCLK: %d\n", ret);
			return ret;
		}
		if (ret == 0) {
			FUNC4(dev, "No BCLK?\n");
			return -EINVAL;
		}
		bclk_rate = ret;

		pllin_rate = FUNC2(pcm512x->sclk);

		sck_rate = FUNC9(dai, bclk_rate);
		if (!sck_rate)
			return -EINVAL;
		pll_rate = 4 * sck_rate;

		ret = FUNC8(dai, pllin_rate, pll_rate);
		if (ret != 0)
			return ret;

		ret = FUNC13(pcm512x->regmap,
				   PCM512x_PLL_COEFF_0, pcm512x->pll_p - 1);
		if (ret != 0) {
			FUNC4(dev, "Failed to write PLL P: %d\n", ret);
			return ret;
		}

		ret = FUNC13(pcm512x->regmap,
				   PCM512x_PLL_COEFF_1, pcm512x->pll_j);
		if (ret != 0) {
			FUNC4(dev, "Failed to write PLL J: %d\n", ret);
			return ret;
		}

		ret = FUNC13(pcm512x->regmap,
				   PCM512x_PLL_COEFF_2, pcm512x->pll_d >> 8);
		if (ret != 0) {
			FUNC4(dev, "Failed to write PLL D msb: %d\n", ret);
			return ret;
		}

		ret = FUNC13(pcm512x->regmap,
				   PCM512x_PLL_COEFF_3, pcm512x->pll_d & 0xff);
		if (ret != 0) {
			FUNC4(dev, "Failed to write PLL D lsb: %d\n", ret);
			return ret;
		}

		ret = FUNC13(pcm512x->regmap,
				   PCM512x_PLL_COEFF_4, pcm512x->pll_r - 1);
		if (ret != 0) {
			FUNC4(dev, "Failed to write PLL R: %d\n", ret);
			return ret;
		}

		mck_rate = pcm512x->real_pll;

		bclk_div = FUNC0(sck_rate, bclk_rate);
	}

	if (bclk_div > 128) {
		FUNC4(dev, "Failed to find BCLK divider\n");
		return -EINVAL;
	}

	/* the actual rate */
	sample_rate = sck_rate / bclk_div / lrclk_div;
	osr_rate = 16 * sample_rate;

	/* run DSP no faster than 50 MHz */
	dsp_div = mck_rate > FUNC7(pcm512x) ? 2 : 1;

	dac_rate = FUNC11(dai, osr_rate, pllin_rate);
	if (dac_rate) {
		/* the desired clock rate is "compatible" with the pll input
		 * clock, so use that clock as dac input instead of the pll
		 * output clock since the pll will introduce jitter and thus
		 * noise.
		 */
		FUNC3(dev, "using pll input as dac input\n");
		ret = FUNC12(pcm512x->regmap, PCM512x_DAC_REF,
					 PCM512x_SDAC, PCM512x_SDAC_GPIO);
		if (ret != 0) {
			FUNC4(component->dev,
				"Failed to set gpio as dacref: %d\n", ret);
			return ret;
		}

		gpio = PCM512x_GREF_GPIO1 + pcm512x->pll_in - 1;
		ret = FUNC12(pcm512x->regmap, PCM512x_GPIO_DACIN,
					 PCM512x_GREF, gpio);
		if (ret != 0) {
			FUNC4(component->dev,
				"Failed to set gpio %d as dacin: %d\n",
				pcm512x->pll_in, ret);
			return ret;
		}

		dacsrc_rate = pllin_rate;
	} else {
		/* run DAC no faster than 6144000 Hz */
		unsigned long dac_mul = FUNC6(pcm512x, 6144000)
			/ osr_rate;
		unsigned long sck_mul = sck_rate / osr_rate;

		for (; dac_mul; dac_mul--) {
			if (!(sck_mul % dac_mul))
				break;
		}
		if (!dac_mul) {
			FUNC4(dev, "Failed to find DAC rate\n");
			return -EINVAL;
		}

		dac_rate = dac_mul * osr_rate;
		FUNC3(dev, "dac_rate %lu sample_rate %lu\n",
			dac_rate, sample_rate);

		ret = FUNC12(pcm512x->regmap, PCM512x_DAC_REF,
					 PCM512x_SDAC, PCM512x_SDAC_SCK);
		if (ret != 0) {
			FUNC4(component->dev,
				"Failed to set sck as dacref: %d\n", ret);
			return ret;
		}

		dacsrc_rate = sck_rate;
	}

	osr_div = FUNC0(dac_rate, osr_rate);
	if (osr_div > 128) {
		FUNC4(dev, "Failed to find OSR divider\n");
		return -EINVAL;
	}

	dac_div = FUNC0(dacsrc_rate, dac_rate);
	if (dac_div > 128) {
		FUNC4(dev, "Failed to find DAC divider\n");
		return -EINVAL;
	}
	dac_rate = dacsrc_rate / dac_div;

	ncp_div = FUNC0(dac_rate,
				    FUNC10(pcm512x, dac_rate));
	if (ncp_div > 128 || dac_rate / ncp_div > 2048000) {
		/* run NCP no faster than 2048000 Hz, but why? */
		ncp_div = FUNC1(dac_rate, 2048000);
		if (ncp_div > 128) {
			FUNC4(dev, "Failed to find NCP divider\n");
			return -EINVAL;
		}
	}

	idac = mck_rate / (dsp_div * sample_rate);

	ret = FUNC13(pcm512x->regmap, PCM512x_DSP_CLKDIV, dsp_div - 1);
	if (ret != 0) {
		FUNC4(dev, "Failed to write DSP divider: %d\n", ret);
		return ret;
	}

	ret = FUNC13(pcm512x->regmap, PCM512x_DAC_CLKDIV, dac_div - 1);
	if (ret != 0) {
		FUNC4(dev, "Failed to write DAC divider: %d\n", ret);
		return ret;
	}

	ret = FUNC13(pcm512x->regmap, PCM512x_NCP_CLKDIV, ncp_div - 1);
	if (ret != 0) {
		FUNC4(dev, "Failed to write NCP divider: %d\n", ret);
		return ret;
	}

	ret = FUNC13(pcm512x->regmap, PCM512x_OSR_CLKDIV, osr_div - 1);
	if (ret != 0) {
		FUNC4(dev, "Failed to write OSR divider: %d\n", ret);
		return ret;
	}

	ret = FUNC13(pcm512x->regmap,
			   PCM512x_MASTER_CLKDIV_1, bclk_div - 1);
	if (ret != 0) {
		FUNC4(dev, "Failed to write BCLK divider: %d\n", ret);
		return ret;
	}

	ret = FUNC13(pcm512x->regmap,
			   PCM512x_MASTER_CLKDIV_2, lrclk_div - 1);
	if (ret != 0) {
		FUNC4(dev, "Failed to write LRCLK divider: %d\n", ret);
		return ret;
	}

	ret = FUNC13(pcm512x->regmap, PCM512x_IDAC_1, idac >> 8);
	if (ret != 0) {
		FUNC4(dev, "Failed to write IDAC msb divider: %d\n", ret);
		return ret;
	}

	ret = FUNC13(pcm512x->regmap, PCM512x_IDAC_2, idac & 0xff);
	if (ret != 0) {
		FUNC4(dev, "Failed to write IDAC lsb divider: %d\n", ret);
		return ret;
	}

	if (sample_rate <= FUNC6(pcm512x, 48000))
		fssp = PCM512x_FSSP_48KHZ;
	else if (sample_rate <= FUNC6(pcm512x, 96000))
		fssp = PCM512x_FSSP_96KHZ;
	else if (sample_rate <= FUNC6(pcm512x, 192000))
		fssp = PCM512x_FSSP_192KHZ;
	else
		fssp = PCM512x_FSSP_384KHZ;
	ret = FUNC12(pcm512x->regmap, PCM512x_FS_SPEED_MODE,
				 PCM512x_FSSP, fssp);
	if (ret != 0) {
		FUNC4(component->dev, "Failed to set fs speed: %d\n", ret);
		return ret;
	}

	FUNC3(component->dev, "DSP divider %d\n", dsp_div);
	FUNC3(component->dev, "DAC divider %d\n", dac_div);
	FUNC3(component->dev, "NCP divider %d\n", ncp_div);
	FUNC3(component->dev, "OSR divider %d\n", osr_div);
	FUNC3(component->dev, "BCK divider %d\n", bclk_div);
	FUNC3(component->dev, "LRCK divider %d\n", lrclk_div);
	FUNC3(component->dev, "IDAC %d\n", idac);
	FUNC3(component->dev, "1<<FSSP %d\n", 1 << fssp);

	return 0;
}