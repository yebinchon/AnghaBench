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
typedef  int u16 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  WM8900_REG_AUDIO1 ; 
 int /*<<< orphan*/  WM8900_REG_DACCTRL ; 
 int WM8900_REG_DACCTRL_DAC_SB_FILT ; 
 int FUNC0 (struct snd_pcm_hw_params*) ; 
 int FUNC1 (struct snd_pcm_hw_params*) ; 
 int FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
	struct snd_pcm_hw_params *params,
	struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	u16 reg;

	reg = FUNC2(component, WM8900_REG_AUDIO1) & ~0x60;

	switch (FUNC1(params)) {
	case 16:
		break;
	case 20:
		reg |= 0x20;
		break;
	case 24:
		reg |= 0x40;
		break;
	case 32:
		reg |= 0x60;
		break;
	default:
		return -EINVAL;
	}

	FUNC3(component, WM8900_REG_AUDIO1, reg);

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
		reg = FUNC2(component, WM8900_REG_DACCTRL);

		if (FUNC0(params) <= 24000)
			reg |= WM8900_REG_DACCTRL_DAC_SB_FILT;
		else
			reg &= ~WM8900_REG_DACCTRL_DAC_SB_FILT;

		FUNC3(component, WM8900_REG_DACCTRL, reg);
	}

	return 0;
}