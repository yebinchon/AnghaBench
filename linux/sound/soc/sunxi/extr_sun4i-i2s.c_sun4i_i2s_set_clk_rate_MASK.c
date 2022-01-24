#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sun4i_i2s {unsigned int mclk_freq; int /*<<< orphan*/  field_clkdiv_mclk_en; int /*<<< orphan*/  regmap; TYPE_1__* variant; int /*<<< orphan*/  mod_clk; } ;
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {unsigned int (* get_bclk_parent_rate ) (struct sun4i_i2s*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  SUN4I_I2S_CLK_DIV_REG ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct sun4i_i2s* FUNC6 (struct snd_soc_dai*) ; 
 unsigned int FUNC7 (struct sun4i_i2s*) ; 
 int FUNC8 (struct sun4i_i2s*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int FUNC9 (struct sun4i_i2s*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 

__attribute__((used)) static int FUNC11(struct snd_soc_dai *dai,
				  unsigned int rate,
				  unsigned int slots,
				  unsigned int slot_width)
{
	struct sun4i_i2s *i2s = FUNC6(dai);
	unsigned int oversample_rate, clk_rate, bclk_parent_rate;
	int bclk_div, mclk_div;
	int ret;

	switch (rate) {
	case 176400:
	case 88200:
	case 44100:
	case 22050:
	case 11025:
		clk_rate = 22579200;
		break;

	case 192000:
	case 128000:
	case 96000:
	case 64000:
	case 48000:
	case 32000:
	case 24000:
	case 16000:
	case 12000:
	case 8000:
		clk_rate = 24576000;
		break;

	default:
		FUNC3(dai->dev, "Unsupported sample rate: %u\n", rate);
		return -EINVAL;
	}

	ret = FUNC2(i2s->mod_clk, clk_rate);
	if (ret)
		return ret;

	oversample_rate = i2s->mclk_freq / rate;
	if (!FUNC10(oversample_rate)) {
		FUNC3(dai->dev, "Unsupported oversample rate: %d\n",
			oversample_rate);
		return -EINVAL;
	}

	bclk_parent_rate = i2s->variant->get_bclk_parent_rate(i2s);
	bclk_div = FUNC8(i2s, bclk_parent_rate,
					  rate, slots, slot_width);
	if (bclk_div < 0) {
		FUNC3(dai->dev, "Unsupported BCLK divider: %d\n", bclk_div);
		return -EINVAL;
	}

	mclk_div = FUNC9(i2s, clk_rate, i2s->mclk_freq);
	if (mclk_div < 0) {
		FUNC3(dai->dev, "Unsupported MCLK divider: %d\n", mclk_div);
		return -EINVAL;
	}

	FUNC5(i2s->regmap, SUN4I_I2S_CLK_DIV_REG,
		     FUNC0(bclk_div) |
		     FUNC1(mclk_div));

	FUNC4(i2s->field_clkdiv_mclk_en, 1);

	return 0;
}