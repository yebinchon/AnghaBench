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
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct pcm1789_private {int format; int /*<<< orphan*/  regmap; int /*<<< orphan*/  rate; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PCM1789_FMT_CONTROL ; 
 int /*<<< orphan*/  PCM1789_FMT_MASK ; 
 int SND_SOC_DAIFMT_FORMAT_MASK ; 
#define  SND_SOC_DAIFMT_I2S 130 
#define  SND_SOC_DAIFMT_LEFT_J 129 
#define  SND_SOC_DAIFMT_RIGHT_J 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct pcm1789_private* FUNC4 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
			     struct snd_pcm_hw_params *params,
			     struct snd_soc_dai *codec_dai)
{
	struct snd_soc_component *component = codec_dai->component;
	struct pcm1789_private *priv = FUNC4(component);
	int val = 0, ret;

	priv->rate = FUNC1(params);

	switch (priv->format & SND_SOC_DAIFMT_FORMAT_MASK) {
	case SND_SOC_DAIFMT_RIGHT_J:
		switch (FUNC2(params)) {
		case 24:
			val = 2;
			break;
		case 16:
			val = 3;
			break;
		default:
			return -EINVAL;
		}
		break;
	case SND_SOC_DAIFMT_I2S:
		switch (FUNC2(params)) {
		case 16:
		case 24:
		case 32:
			val = 0;
			break;
		default:
			return -EINVAL;
		}
		break;
	case SND_SOC_DAIFMT_LEFT_J:
		switch (FUNC2(params)) {
		case 16:
		case 24:
		case 32:
			val = 1;
			break;
		default:
			return -EINVAL;
		}
		break;
	default:
		FUNC0(component->dev, "Invalid DAI format\n");
		return -EINVAL;
	}

	ret = FUNC3(priv->regmap, PCM1789_FMT_CONTROL,
				 PCM1789_FMT_MASK, val);
	if (ret < 0)
		return ret;

	return 0;
}