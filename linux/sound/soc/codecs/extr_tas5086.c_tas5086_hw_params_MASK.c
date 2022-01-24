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
struct tas5086_private {int rate; int mclk; int sclk; int format; int /*<<< orphan*/  regmap; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int SND_SOC_DAIFMT_FORMAT_MASK ; 
#define  SND_SOC_DAIFMT_I2S 130 
#define  SND_SOC_DAIFMT_LEFT_J 129 
#define  SND_SOC_DAIFMT_RIGHT_J 128 
 int /*<<< orphan*/  TAS5086_CLOCK_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  TAS5086_CLOCK_RATE_MASK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  TAS5086_CLOCK_RATIO_MASK ; 
 int /*<<< orphan*/  TAS5086_CLOCK_SCLK_RATIO_48 ; 
 int /*<<< orphan*/  TAS5086_CLOCK_VALID ; 
 int /*<<< orphan*/  TAS5086_SERIAL_DATA_IF ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct snd_pcm_hw_params*) ; 
 int FUNC6 (struct snd_pcm_hw_params*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct tas5086_private* FUNC9 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  tas5086_ratios ; 
 int /*<<< orphan*/  tas5086_sample_rates ; 
 int FUNC10 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC11(struct snd_pcm_substream *substream,
			     struct snd_pcm_hw_params *params,
			     struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct tas5086_private *priv = FUNC9(component);
	int val;
	int ret;

	priv->rate = FUNC5(params);

	/* Look up the sample rate and refer to the offset in the list */
	val = FUNC4(tas5086_sample_rates,
			     FUNC0(tas5086_sample_rates), priv->rate);

	if (val < 0) {
		FUNC3(component->dev, "Invalid sample rate\n");
		return -EINVAL;
	}

	ret = FUNC7(priv->regmap, TAS5086_CLOCK_CONTROL,
				 TAS5086_CLOCK_RATE_MASK,
				 FUNC1(val));
	if (ret < 0)
		return ret;

	/* MCLK / Fs ratio */
	val = FUNC4(tas5086_ratios, FUNC0(tas5086_ratios),
			     priv->mclk / priv->rate);
	if (val < 0) {
		FUNC3(component->dev, "Invalid MCLK / Fs ratio\n");
		return -EINVAL;
	}

	ret = FUNC7(priv->regmap, TAS5086_CLOCK_CONTROL,
				 TAS5086_CLOCK_RATIO_MASK,
				 FUNC2(val));
	if (ret < 0)
		return ret;


	ret = FUNC7(priv->regmap, TAS5086_CLOCK_CONTROL,
				 TAS5086_CLOCK_SCLK_RATIO_48,
				 (priv->sclk == 48 * priv->rate) ? 
					TAS5086_CLOCK_SCLK_RATIO_48 : 0);
	if (ret < 0)
		return ret;

	/*
	 * The chip has a very unituitive register mapping and muxes information
	 * about data format and sample depth into the same register, but not on
	 * a logical bit-boundary. Hence, we have to refer to the format passed
	 * in the set_dai_fmt() callback and set up everything from here.
	 *
	 * First, determine the 'base' value, using the format ...
	 */
	switch (priv->format & SND_SOC_DAIFMT_FORMAT_MASK) {
	case SND_SOC_DAIFMT_RIGHT_J:
		val = 0x00;
		break;
	case SND_SOC_DAIFMT_I2S:
		val = 0x03;
		break;
	case SND_SOC_DAIFMT_LEFT_J:
		val = 0x06;
		break;
	default:
		FUNC3(component->dev, "Invalid DAI format\n");
		return -EINVAL;
	}

	/* ... then add the offset for the sample bit depth. */
	switch (FUNC6(params)) {
        case 16:
		val += 0;
                break;
	case 20:
		val += 1;
		break;
	case 24:
		val += 2;
		break;
	default:
		FUNC3(component->dev, "Invalid bit width\n");
		return -EINVAL;
	}

	ret = FUNC8(priv->regmap, TAS5086_SERIAL_DATA_IF, val);
	if (ret < 0)
		return ret;

	/* clock is considered valid now */
	ret = FUNC7(priv->regmap, TAS5086_CLOCK_CONTROL,
				 TAS5086_CLOCK_VALID, TAS5086_CLOCK_VALID);
	if (ret < 0)
		return ret;

	return FUNC10(component);
}