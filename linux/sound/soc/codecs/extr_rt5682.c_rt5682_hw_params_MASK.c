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
struct snd_soc_dai {size_t id; int /*<<< orphan*/  dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct rt5682_priv {int /*<<< orphan*/ * master; int /*<<< orphan*/ * lrck; int /*<<< orphan*/  sysclk; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RT5682_ADDA_CLK_1 ; 
#define  RT5682_AIF1 129 
#define  RT5682_AIF2 128 
 unsigned int RT5682_I2S1_DL_20 ; 
 unsigned int RT5682_I2S1_DL_24 ; 
 unsigned int RT5682_I2S1_DL_32 ; 
 int /*<<< orphan*/  RT5682_I2S1_DL_MASK ; 
 int RT5682_I2S1_MONO_DIS ; 
 int RT5682_I2S1_MONO_EN ; 
 int /*<<< orphan*/  RT5682_I2S1_MONO_MASK ; 
 int /*<<< orphan*/  RT5682_I2S1_SDP ; 
 unsigned int RT5682_I2S2_DL_20 ; 
 unsigned int RT5682_I2S2_DL_24 ; 
 unsigned int RT5682_I2S2_DL_8 ; 
 int /*<<< orphan*/  RT5682_I2S2_DL_MASK ; 
 int RT5682_I2S2_MONO_DIS ; 
 int RT5682_I2S2_MONO_EN ; 
 int /*<<< orphan*/  RT5682_I2S2_MONO_MASK ; 
 int /*<<< orphan*/  RT5682_I2S2_M_PD_MASK ; 
 int RT5682_I2S2_M_PD_SFT ; 
 int /*<<< orphan*/  RT5682_I2S2_SDP ; 
 int /*<<< orphan*/  RT5682_I2S_M_CLK_CTRL_1 ; 
 int /*<<< orphan*/  RT5682_I2S_M_DIV_MASK ; 
 int RT5682_I2S_M_DIV_SFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (struct snd_pcm_hw_params*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rt5682_priv* FUNC6 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct snd_pcm_hw_params*) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_substream *substream,
	struct snd_pcm_hw_params *params, struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct rt5682_priv *rt5682 = FUNC6(component);
	unsigned int len_1 = 0, len_2 = 0;
	int pre_div, frame_size;

	rt5682->lrck[dai->id] = FUNC3(params);
	pre_div = FUNC5(rt5682->sysclk, rt5682->lrck[dai->id]);

	frame_size = FUNC8(params);
	if (frame_size < 0) {
		FUNC1(component->dev, "Unsupported frame size: %d\n",
			frame_size);
		return -EINVAL;
	}

	FUNC0(dai->dev, "lrck is %dHz and pre_div is %d for iis %d\n",
				rt5682->lrck[dai->id], pre_div, dai->id);

	switch (FUNC4(params)) {
	case 16:
		break;
	case 20:
		len_1 |= RT5682_I2S1_DL_20;
		len_2 |= RT5682_I2S2_DL_20;
		break;
	case 24:
		len_1 |= RT5682_I2S1_DL_24;
		len_2 |= RT5682_I2S2_DL_24;
		break;
	case 32:
		len_1 |= RT5682_I2S1_DL_32;
		len_2 |= RT5682_I2S2_DL_24;
		break;
	case 8:
		len_1 |= RT5682_I2S2_DL_8;
		len_2 |= RT5682_I2S2_DL_8;
		break;
	default:
		return -EINVAL;
	}

	switch (dai->id) {
	case RT5682_AIF1:
		FUNC7(component, RT5682_I2S1_SDP,
			RT5682_I2S1_DL_MASK, len_1);
		if (rt5682->master[RT5682_AIF1]) {
			FUNC7(component,
				RT5682_ADDA_CLK_1, RT5682_I2S_M_DIV_MASK,
				pre_div << RT5682_I2S_M_DIV_SFT);
		}
		if (FUNC2(params) == 1) /* mono mode */
			FUNC7(component,
				RT5682_I2S1_SDP, RT5682_I2S1_MONO_MASK,
				RT5682_I2S1_MONO_EN);
		else
			FUNC7(component,
				RT5682_I2S1_SDP, RT5682_I2S1_MONO_MASK,
				RT5682_I2S1_MONO_DIS);
		break;
	case RT5682_AIF2:
		FUNC7(component, RT5682_I2S2_SDP,
			RT5682_I2S2_DL_MASK, len_2);
		if (rt5682->master[RT5682_AIF2]) {
			FUNC7(component,
				RT5682_I2S_M_CLK_CTRL_1, RT5682_I2S2_M_PD_MASK,
				pre_div << RT5682_I2S2_M_PD_SFT);
		}
		if (FUNC2(params) == 1) /* mono mode */
			FUNC7(component,
				RT5682_I2S2_SDP, RT5682_I2S2_MONO_MASK,
				RT5682_I2S2_MONO_EN);
		else
			FUNC7(component,
				RT5682_I2S2_SDP, RT5682_I2S2_MONO_MASK,
				RT5682_I2S2_MONO_DIS);
		break;
	default:
		FUNC1(component->dev, "Invalid dai->id: %d\n", dai->id);
		return -EINVAL;
	}

	return 0;
}