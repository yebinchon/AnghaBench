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
struct sun4i_i2s {int slots; int format; int /*<<< orphan*/  regmap; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SND_SOC_DAIFMT_DSP_A 132 
#define  SND_SOC_DAIFMT_DSP_B 131 
 int SND_SOC_DAIFMT_FORMAT_MASK ; 
#define  SND_SOC_DAIFMT_I2S 130 
#define  SND_SOC_DAIFMT_LEFT_J 129 
#define  SND_SOC_DAIFMT_RIGHT_J 128 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  SUN4I_I2S_CHAN_SEL_MASK ; 
 int /*<<< orphan*/  SUN4I_I2S_FMT0_REG ; 
 int /*<<< orphan*/  SUN8I_I2S_CHAN_CFG_REG ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  SUN8I_I2S_CHAN_CFG_RX_SLOT_NUM_MASK ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  SUN8I_I2S_CHAN_CFG_TX_SLOT_NUM_MASK ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  SUN8I_I2S_FMT0_LRCK_PERIOD_MASK ; 
 int /*<<< orphan*/  SUN8I_I2S_RX_CHAN_MAP_REG ; 
 int /*<<< orphan*/  SUN8I_I2S_RX_CHAN_SEL_REG ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  SUN8I_I2S_TX_CHAN_EN_MASK ; 
 int /*<<< orphan*/  SUN8I_I2S_TX_CHAN_MAP_REG ; 
 int /*<<< orphan*/  SUN8I_I2S_TX_CHAN_SEL_REG ; 
 unsigned int FUNC5 (struct snd_pcm_hw_params const*) ; 
 unsigned int FUNC6 (struct snd_pcm_hw_params const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(const struct sun4i_i2s *i2s,
				  const struct snd_pcm_hw_params *params)
{
	unsigned int channels = FUNC5(params);
	unsigned int slots = channels;
	unsigned int lrck_period;

	if (i2s->slots)
		slots = i2s->slots;

	/* Map the channels for playback and capture */
	FUNC8(i2s->regmap, SUN8I_I2S_TX_CHAN_MAP_REG, 0x76543210);
	FUNC8(i2s->regmap, SUN8I_I2S_RX_CHAN_MAP_REG, 0x76543210);

	/* Configure the channels */
	FUNC7(i2s->regmap, SUN8I_I2S_TX_CHAN_SEL_REG,
			   SUN4I_I2S_CHAN_SEL_MASK,
			   FUNC0(channels));
	FUNC7(i2s->regmap, SUN8I_I2S_RX_CHAN_SEL_REG,
			   SUN4I_I2S_CHAN_SEL_MASK,
			   FUNC0(channels));

	FUNC7(i2s->regmap, SUN8I_I2S_CHAN_CFG_REG,
			   SUN8I_I2S_CHAN_CFG_TX_SLOT_NUM_MASK,
			   FUNC2(channels));
	FUNC7(i2s->regmap, SUN8I_I2S_CHAN_CFG_REG,
			   SUN8I_I2S_CHAN_CFG_RX_SLOT_NUM_MASK,
			   FUNC1(channels));

	switch (i2s->format & SND_SOC_DAIFMT_FORMAT_MASK) {
	case SND_SOC_DAIFMT_DSP_A:
	case SND_SOC_DAIFMT_DSP_B:
	case SND_SOC_DAIFMT_LEFT_J:
	case SND_SOC_DAIFMT_RIGHT_J:
		lrck_period = FUNC6(params) * slots;
		break;

	case SND_SOC_DAIFMT_I2S:
		lrck_period = FUNC6(params);
		break;

	default:
		return -EINVAL;
	}

	FUNC7(i2s->regmap, SUN4I_I2S_FMT0_REG,
			   SUN8I_I2S_FMT0_LRCK_PERIOD_MASK,
			   FUNC3(lrck_period));

	FUNC7(i2s->regmap, SUN8I_I2S_TX_CHAN_SEL_REG,
			   SUN8I_I2S_TX_CHAN_EN_MASK,
			   FUNC4(channels));

	return 0;
}