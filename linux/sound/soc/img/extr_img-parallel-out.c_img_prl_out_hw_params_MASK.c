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
typedef  int u32 ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct img_prl_out {int /*<<< orphan*/  clk_ref; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IMG_PRL_OUT_CTL ; 
 int IMG_PRL_OUT_CTL_PACKH_MASK ; 
#define  SNDRV_PCM_FORMAT_S24_LE 129 
#define  SNDRV_PCM_FORMAT_S32_LE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC1 (struct img_prl_out*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct img_prl_out*,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (struct snd_pcm_hw_params*) ; 
 unsigned int FUNC5 (struct snd_pcm_hw_params*) ; 
 struct img_prl_out* FUNC6 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
	struct snd_pcm_hw_params *params, struct snd_soc_dai *dai)
{
	struct img_prl_out *prl = FUNC6(dai);
	unsigned int rate, channels;
	u32 reg, control_set = 0;

	rate = FUNC5(params);
	channels = FUNC3(params);

	switch (FUNC4(params)) {
	case SNDRV_PCM_FORMAT_S32_LE:
		control_set |= IMG_PRL_OUT_CTL_PACKH_MASK;
		break;
	case SNDRV_PCM_FORMAT_S24_LE:
		break;
	default:
		return -EINVAL;
	}

	if (channels != 2)
		return -EINVAL;

	FUNC0(prl->clk_ref, rate * 256);

	reg = FUNC1(prl, IMG_PRL_OUT_CTL);
	reg = (reg & ~IMG_PRL_OUT_CTL_PACKH_MASK) | control_set;
	FUNC2(prl, reg, IMG_PRL_OUT_CTL);

	return 0;
}