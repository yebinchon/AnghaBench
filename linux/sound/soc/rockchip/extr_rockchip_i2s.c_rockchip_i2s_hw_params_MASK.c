#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_pcm_runtime {TYPE_3__* dai_link; } ;
struct snd_soc_dai {TYPE_2__* driver; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct rk_i2s_dev {int /*<<< orphan*/  regmap; TYPE_1__* pins; int /*<<< orphan*/  grf; int /*<<< orphan*/  dev; int /*<<< orphan*/  mclk; scalar_t__ is_master_mode; } ;
struct TYPE_6__ {scalar_t__ symmetric_rates; } ;
struct TYPE_5__ {scalar_t__ symmetric_rates; } ;
struct TYPE_4__ {unsigned int shift; int /*<<< orphan*/  reg_offset; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int I2S_CHN_2 ; 
#define  I2S_CHN_4 135 
#define  I2S_CHN_6 134 
#define  I2S_CHN_8 133 
 int /*<<< orphan*/  I2S_CKR ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int I2S_CKR_MDIV_MASK ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int I2S_CKR_RSD_MASK ; 
 unsigned int I2S_CKR_TRCM_MASK ; 
 unsigned int I2S_CKR_TRCM_TXONLY ; 
 unsigned int I2S_CKR_TRCM_TXRX ; 
 unsigned int FUNC2 (unsigned int) ; 
 unsigned int I2S_CKR_TSD_MASK ; 
 int /*<<< orphan*/  I2S_DMACR ; 
 unsigned int FUNC3 (int) ; 
 unsigned int I2S_DMACR_RDL_MASK ; 
 unsigned int FUNC4 (int) ; 
 unsigned int I2S_DMACR_TDL_MASK ; 
 unsigned int I2S_IO_2CH_OUT_8CH_IN ; 
 unsigned int I2S_IO_4CH_OUT_6CH_IN ; 
 unsigned int I2S_IO_6CH_OUT_4CH_IN ; 
 unsigned int I2S_IO_8CH_OUT_2CH_IN ; 
 int I2S_IO_DIRECTION_MASK ; 
 int /*<<< orphan*/  I2S_RXCR ; 
 unsigned int I2S_RXCR_CSR_MASK ; 
 unsigned int I2S_RXCR_VDW_MASK ; 
 int /*<<< orphan*/  I2S_TXCR ; 
 unsigned int I2S_TXCR_CSR_MASK ; 
 unsigned int FUNC5 (int) ; 
 unsigned int I2S_TXCR_VDW_MASK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
#define  SNDRV_PCM_FORMAT_S16_LE 132 
#define  SNDRV_PCM_FORMAT_S20_3LE 131 
#define  SNDRV_PCM_FORMAT_S24_LE 130 
#define  SNDRV_PCM_FORMAT_S32_LE 129 
#define  SNDRV_PCM_FORMAT_S8 128 
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC9 (struct snd_pcm_hw_params*) ; 
 int FUNC10 (struct snd_pcm_hw_params*) ; 
 unsigned int FUNC11 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct rk_i2s_dev* FUNC15 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC16(struct snd_pcm_substream *substream,
				  struct snd_pcm_hw_params *params,
				  struct snd_soc_dai *dai)
{
	struct rk_i2s_dev *i2s = FUNC15(dai);
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	unsigned int val = 0;
	unsigned int mclk_rate, bclk_rate, div_bclk, div_lrck;

	if (i2s->is_master_mode) {
		mclk_rate = FUNC7(i2s->mclk);
		bclk_rate = 2 * 32 * FUNC11(params);
		if (bclk_rate && mclk_rate % bclk_rate)
			return -EINVAL;

		div_bclk = mclk_rate / bclk_rate;
		div_lrck = bclk_rate / FUNC11(params);
		FUNC13(i2s->regmap, I2S_CKR,
				   I2S_CKR_MDIV_MASK,
				   FUNC0(div_bclk));

		FUNC13(i2s->regmap, I2S_CKR,
				   I2S_CKR_TSD_MASK |
				   I2S_CKR_RSD_MASK,
				   FUNC2(div_lrck) |
				   FUNC1(div_lrck));
	}

	switch (FUNC10(params)) {
	case SNDRV_PCM_FORMAT_S8:
		val |= FUNC5(8);
		break;
	case SNDRV_PCM_FORMAT_S16_LE:
		val |= FUNC5(16);
		break;
	case SNDRV_PCM_FORMAT_S20_3LE:
		val |= FUNC5(20);
		break;
	case SNDRV_PCM_FORMAT_S24_LE:
		val |= FUNC5(24);
		break;
	case SNDRV_PCM_FORMAT_S32_LE:
		val |= FUNC5(32);
		break;
	default:
		return -EINVAL;
	}

	switch (FUNC9(params)) {
	case 8:
		val |= I2S_CHN_8;
		break;
	case 6:
		val |= I2S_CHN_6;
		break;
	case 4:
		val |= I2S_CHN_4;
		break;
	case 2:
		val |= I2S_CHN_2;
		break;
	default:
		FUNC8(i2s->dev, "invalid channel: %d\n",
			FUNC9(params));
		return -EINVAL;
	}

	if (substream->stream == SNDRV_PCM_STREAM_CAPTURE)
		FUNC13(i2s->regmap, I2S_RXCR,
				   I2S_RXCR_VDW_MASK | I2S_RXCR_CSR_MASK,
				   val);
	else
		FUNC13(i2s->regmap, I2S_TXCR,
				   I2S_TXCR_VDW_MASK | I2S_TXCR_CSR_MASK,
				   val);

	if (!FUNC6(i2s->grf) && i2s->pins) {
		FUNC12(i2s->regmap, I2S_TXCR, &val);
		val &= I2S_TXCR_CSR_MASK;

		switch (val) {
		case I2S_CHN_4:
			val = I2S_IO_4CH_OUT_6CH_IN;
			break;
		case I2S_CHN_6:
			val = I2S_IO_6CH_OUT_4CH_IN;
			break;
		case I2S_CHN_8:
			val = I2S_IO_8CH_OUT_2CH_IN;
			break;
		default:
			val = I2S_IO_2CH_OUT_8CH_IN;
			break;
		}

		val <<= i2s->pins->shift;
		val |= (I2S_IO_DIRECTION_MASK << i2s->pins->shift) << 16;
		FUNC14(i2s->grf, i2s->pins->reg_offset, val);
	}

	FUNC13(i2s->regmap, I2S_DMACR, I2S_DMACR_TDL_MASK,
			   FUNC4(16));
	FUNC13(i2s->regmap, I2S_DMACR, I2S_DMACR_RDL_MASK,
			   FUNC3(16));

	val = I2S_CKR_TRCM_TXRX;
	if (dai->driver->symmetric_rates && rtd->dai_link->symmetric_rates)
		val = I2S_CKR_TRCM_TXONLY;

	FUNC13(i2s->regmap, I2S_CKR,
			   I2S_CKR_TRCM_MASK,
			   val);
	return 0;
}