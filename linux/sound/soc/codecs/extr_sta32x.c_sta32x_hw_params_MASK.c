#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sta32x_priv {unsigned int mclk; int /*<<< orphan*/  regmap; int /*<<< orphan*/  format; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_3__ {unsigned int fs; int ir; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 int EIO ; 
#define  SND_SOC_DAIFMT_I2S 130 
#define  SND_SOC_DAIFMT_LEFT_J 129 
#define  SND_SOC_DAIFMT_RIGHT_J 128 
 int /*<<< orphan*/  STA32X_CONFA ; 
 int STA32X_CONFA_IR_MASK ; 
 int STA32X_CONFA_IR_SHIFT ; 
 int STA32X_CONFA_MCS_MASK ; 
 int STA32X_CONFA_MCS_SHIFT ; 
 int /*<<< orphan*/  STA32X_CONFB ; 
 int STA32X_CONFB_SAIFB ; 
 int STA32X_CONFB_SAI_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__* interpolation_ratios ; 
 unsigned int** mcs_ratio_table ; 
 unsigned int FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (struct snd_pcm_hw_params*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int) ; 
 struct sta32x_priv* FUNC6 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
			    struct snd_pcm_hw_params *params,
			    struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct sta32x_priv *sta32x = FUNC6(component);
	int i, mcs = -EINVAL, ir = -EINVAL;
	unsigned int confa, confb;
	unsigned int rate, ratio;
	int ret;

	if (!sta32x->mclk) {
		FUNC2(component->dev,
			"sta32x->mclk is unset. Unable to determine ratio\n");
		return -EIO;
	}

	rate = FUNC3(params);
	ratio = sta32x->mclk / rate;
	FUNC1(component->dev, "rate: %u, ratio: %u\n", rate, ratio);

	for (i = 0; i < FUNC0(interpolation_ratios); i++) {
		if (interpolation_ratios[i].fs == rate) {
			ir = interpolation_ratios[i].ir;
			break;
		}
	}

	if (ir < 0) {
		FUNC2(component->dev, "Unsupported samplerate: %u\n", rate);
		return -EINVAL;
	}

	for (i = 0; i < 6; i++) {
		if (mcs_ratio_table[ir][i] == ratio) {
			mcs = i;
			break;
		}
	}

	if (mcs < 0) {
		FUNC2(component->dev, "Unresolvable ratio: %u\n", ratio);
		return -EINVAL;
	}

	confa = (ir << STA32X_CONFA_IR_SHIFT) |
		(mcs << STA32X_CONFA_MCS_SHIFT);
	confb = 0;

	switch (FUNC4(params)) {
	case 24:
		FUNC1(component->dev, "24bit\n");
		/* fall through */
	case 32:
		FUNC1(component->dev, "24bit or 32bit\n");
		switch (sta32x->format) {
		case SND_SOC_DAIFMT_I2S:
			confb |= 0x0;
			break;
		case SND_SOC_DAIFMT_LEFT_J:
			confb |= 0x1;
			break;
		case SND_SOC_DAIFMT_RIGHT_J:
			confb |= 0x2;
			break;
		}

		break;
	case 20:
		FUNC1(component->dev, "20bit\n");
		switch (sta32x->format) {
		case SND_SOC_DAIFMT_I2S:
			confb |= 0x4;
			break;
		case SND_SOC_DAIFMT_LEFT_J:
			confb |= 0x5;
			break;
		case SND_SOC_DAIFMT_RIGHT_J:
			confb |= 0x6;
			break;
		}

		break;
	case 18:
		FUNC1(component->dev, "18bit\n");
		switch (sta32x->format) {
		case SND_SOC_DAIFMT_I2S:
			confb |= 0x8;
			break;
		case SND_SOC_DAIFMT_LEFT_J:
			confb |= 0x9;
			break;
		case SND_SOC_DAIFMT_RIGHT_J:
			confb |= 0xa;
			break;
		}

		break;
	case 16:
		FUNC1(component->dev, "16bit\n");
		switch (sta32x->format) {
		case SND_SOC_DAIFMT_I2S:
			confb |= 0x0;
			break;
		case SND_SOC_DAIFMT_LEFT_J:
			confb |= 0xd;
			break;
		case SND_SOC_DAIFMT_RIGHT_J:
			confb |= 0xe;
			break;
		}

		break;
	default:
		return -EINVAL;
	}

	ret = FUNC5(sta32x->regmap, STA32X_CONFA,
				 STA32X_CONFA_MCS_MASK | STA32X_CONFA_IR_MASK,
				 confa);
	if (ret < 0)
		return ret;

	ret = FUNC5(sta32x->regmap, STA32X_CONFB,
				 STA32X_CONFB_SAI_MASK | STA32X_CONFB_SAIFB,
				 confb);
	if (ret < 0)
		return ret;

	return 0;
}