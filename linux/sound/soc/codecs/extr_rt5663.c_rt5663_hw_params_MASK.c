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
struct snd_soc_dai {int /*<<< orphan*/  id; int /*<<< orphan*/  dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct rt5663_priv {int lrck; int /*<<< orphan*/  sysclk; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RT5663_ADDA_CLK_1 ; 
 int /*<<< orphan*/  RT5663_I2S1_SDP ; 
 unsigned int RT5663_I2S_DL_16 ; 
 unsigned int RT5663_I2S_DL_20 ; 
 unsigned int RT5663_I2S_DL_24 ; 
 unsigned int RT5663_I2S_DL_8 ; 
 int /*<<< orphan*/  RT5663_I2S_DL_MASK ; 
 int /*<<< orphan*/  RT5663_I2S_PD1_MASK ; 
 int RT5663_I2S_PD1_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 struct rt5663_priv* FUNC5 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
	struct snd_pcm_hw_params *params, struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct rt5663_priv *rt5663 = FUNC5(component);
	unsigned int val_len = 0;
	int pre_div;

	rt5663->lrck = FUNC2(params);

	FUNC0(dai->dev, "bclk is %dHz and sysclk is %dHz\n",
		rt5663->lrck, rt5663->sysclk);

	pre_div = FUNC4(rt5663->sysclk, rt5663->lrck);
	if (pre_div < 0) {
		FUNC1(component->dev, "Unsupported clock setting %d for DAI %d\n",
			rt5663->lrck, dai->id);
		return -EINVAL;
	}

	FUNC0(dai->dev, "pre_div is %d for iis %d\n", pre_div, dai->id);

	switch (FUNC3(params)) {
	case 8:
		val_len = RT5663_I2S_DL_8;
		break;
	case 16:
		val_len = RT5663_I2S_DL_16;
		break;
	case 20:
		val_len = RT5663_I2S_DL_20;
		break;
	case 24:
		val_len = RT5663_I2S_DL_24;
		break;
	default:
		return -EINVAL;
	}

	FUNC6(component, RT5663_I2S1_SDP,
		RT5663_I2S_DL_MASK, val_len);

	FUNC6(component, RT5663_ADDA_CLK_1,
		RT5663_I2S_PD1_MASK, pre_div << RT5663_I2S_PD1_SHIFT);

	return 0;
}