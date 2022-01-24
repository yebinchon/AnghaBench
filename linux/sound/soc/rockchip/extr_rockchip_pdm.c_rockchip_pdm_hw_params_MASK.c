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
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct rk_pdm_dev {scalar_t__ version; int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; int /*<<< orphan*/  reset; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PDM_CLK_CTRL ; 
 unsigned int PDM_CLK_EN ; 
 unsigned int PDM_CLK_FD_RATIO_35 ; 
 unsigned int PDM_CLK_FD_RATIO_40 ; 
 unsigned int PDM_CLK_FD_RATIO_MSK ; 
 int /*<<< orphan*/  PDM_CTRL0 ; 
 int /*<<< orphan*/  PDM_CTRL1 ; 
 int /*<<< orphan*/  PDM_DMA_CTRL ; 
 unsigned int FUNC1 (int) ; 
 unsigned int PDM_DMA_RDL_MSK ; 
 unsigned int PDM_DS_RATIO_MSK ; 
 int PDM_FD_DENOMINATOR_MSK ; 
 unsigned long PDM_FD_DENOMINATOR_SFT ; 
 int PDM_FD_NUMERATOR_MSK ; 
 unsigned long PDM_FD_NUMERATOR_SFT ; 
 unsigned int PDM_HPF_60HZ ; 
 unsigned int PDM_HPF_CF_MSK ; 
 int /*<<< orphan*/  PDM_HPF_CTRL ; 
 unsigned int PDM_HPF_LE ; 
 unsigned int PDM_HPF_RE ; 
 unsigned int PDM_MODE_LJ ; 
 unsigned int PDM_MODE_MSK ; 
 unsigned int PDM_PATH0_EN ; 
 unsigned int PDM_PATH1_EN ; 
 unsigned int PDM_PATH2_EN ; 
 unsigned int PDM_PATH3_EN ; 
 unsigned int PDM_PATH_MSK ; 
 unsigned int FUNC2 (int) ; 
 unsigned int PDM_VDW_MSK ; 
 scalar_t__ RK_PDM_RK3229 ; 
 scalar_t__ RK_PDM_RK3308 ; 
#define  SNDRV_PCM_FORMAT_S16_LE 132 
#define  SNDRV_PCM_FORMAT_S20_3LE 131 
#define  SNDRV_PCM_FORMAT_S24_LE 130 
#define  SNDRV_PCM_FORMAT_S32_LE 129 
#define  SNDRV_PCM_FORMAT_S8 128 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 unsigned int FUNC5 (struct rk_pdm_dev*,unsigned int,unsigned int*,unsigned int*) ; 
 unsigned int FUNC6 (unsigned int) ; 
 int FUNC7 (struct snd_pcm_hw_params*) ; 
 int FUNC8 (struct snd_pcm_hw_params*) ; 
 unsigned int FUNC9 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct rk_pdm_dev*,int /*<<< orphan*/ ) ; 
 struct rk_pdm_dev* FUNC16 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC17(struct snd_pcm_substream *substream,
				  struct snd_pcm_hw_params *params,
				  struct snd_soc_dai *dai)
{
	struct rk_pdm_dev *pdm = FUNC16(dai);
	unsigned int val = 0;
	unsigned int clk_rate, clk_div, samplerate;
	unsigned int clk_src, clk_out = 0;
	unsigned long m, n;
	bool change;
	int ret;

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
		return 0;

	samplerate = FUNC9(params);
	clk_rate = FUNC5(pdm, samplerate, &clk_src, &clk_out);
	if (!clk_rate)
		return -EINVAL;

	ret = FUNC3(pdm->clk, clk_src);
	if (ret)
		return -EINVAL;

	if (pdm->version == RK_PDM_RK3308) {
		FUNC10(clk_out, clk_src,
					    FUNC0(16 - 1, 0),
					    FUNC0(16 - 1, 0),
					    &m, &n);

		val = (m << PDM_FD_NUMERATOR_SFT) |
			(n << PDM_FD_DENOMINATOR_SFT);
		FUNC12(pdm->regmap, PDM_CTRL1,
					 PDM_FD_NUMERATOR_MSK |
					 PDM_FD_DENOMINATOR_MSK,
					 val, &change);
		if (change) {
			FUNC13(pdm->reset);
			FUNC14(pdm->reset);
			FUNC15(pdm, 0);
		}
		clk_div = n / m;
		if (clk_div >= 40)
			val = PDM_CLK_FD_RATIO_40;
		else if (clk_div <= 35)
			val = PDM_CLK_FD_RATIO_35;
		else
			return -EINVAL;
		FUNC11(pdm->regmap, PDM_CLK_CTRL,
				   PDM_CLK_FD_RATIO_MSK,
				   val);
	}
	val = FUNC6(samplerate);
	FUNC11(pdm->regmap, PDM_CLK_CTRL, PDM_DS_RATIO_MSK, val);
	FUNC11(pdm->regmap, PDM_HPF_CTRL,
			   PDM_HPF_CF_MSK, PDM_HPF_60HZ);
	FUNC11(pdm->regmap, PDM_HPF_CTRL,
			   PDM_HPF_LE | PDM_HPF_RE, PDM_HPF_LE | PDM_HPF_RE);
	FUNC11(pdm->regmap, PDM_CLK_CTRL, PDM_CLK_EN, PDM_CLK_EN);
	if (pdm->version != RK_PDM_RK3229)
		FUNC11(pdm->regmap, PDM_CTRL0,
				   PDM_MODE_MSK, PDM_MODE_LJ);

	val = 0;
	switch (FUNC8(params)) {
	case SNDRV_PCM_FORMAT_S8:
		val |= FUNC2(8);
		break;
	case SNDRV_PCM_FORMAT_S16_LE:
		val |= FUNC2(16);
		break;
	case SNDRV_PCM_FORMAT_S20_3LE:
		val |= FUNC2(20);
		break;
	case SNDRV_PCM_FORMAT_S24_LE:
		val |= FUNC2(24);
		break;
	case SNDRV_PCM_FORMAT_S32_LE:
		val |= FUNC2(32);
		break;
	default:
		return -EINVAL;
	}

	switch (FUNC7(params)) {
	case 8:
		val |= PDM_PATH3_EN;
		/* fallthrough */
	case 6:
		val |= PDM_PATH2_EN;
		/* fallthrough */
	case 4:
		val |= PDM_PATH1_EN;
		/* fallthrough */
	case 2:
		val |= PDM_PATH0_EN;
		break;
	default:
		FUNC4(pdm->dev, "invalid channel: %d\n",
			FUNC7(params));
		return -EINVAL;
	}

	FUNC11(pdm->regmap, PDM_CTRL0,
			   PDM_PATH_MSK | PDM_VDW_MSK,
			   val);
	/* all channels share the single FIFO */
	FUNC11(pdm->regmap, PDM_DMA_CTRL, PDM_DMA_RDL_MSK,
			   FUNC1(8 * FUNC7(params)));

	return 0;
}