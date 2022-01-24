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
struct cs4341_priv {int fmt; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS4341_MODE2_DIF ; 
 unsigned int CS4341_MODE2_DIF_I2S_16 ; 
 unsigned int CS4341_MODE2_DIF_I2S_24 ; 
 unsigned int CS4341_MODE2_DIF_LJ_24 ; 
 unsigned int CS4341_MODE2_DIF_RJ_16 ; 
 unsigned int CS4341_MODE2_DIF_RJ_24 ; 
 int /*<<< orphan*/  CS4341_REG_MODE2 ; 
 int EINVAL ; 
#define  SNDRV_PCM_FORMAT_S16_LE 132 
#define  SNDRV_PCM_FORMAT_S24_LE 131 
#define  SND_SOC_DAIFMT_I2S 130 
#define  SND_SOC_DAIFMT_LEFT_J 129 
#define  SND_SOC_DAIFMT_RIGHT_J 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct snd_pcm_hw_params*) ; 
 struct cs4341_priv* FUNC2 (struct snd_soc_component*) ; 
 int FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
			    struct snd_pcm_hw_params *params,
			    struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct cs4341_priv *cs4341 = FUNC2(component);
	unsigned int mode = 0;
	int b24 = 0;

	switch (FUNC1(params)) {
	case SNDRV_PCM_FORMAT_S24_LE:
		b24 = 1;
		break;
	case SNDRV_PCM_FORMAT_S16_LE:
		break;
	default:
		FUNC0(component->dev, "Unsupported PCM format 0x%08x.\n",
			FUNC1(params));
		return -EINVAL;
	}

	switch (cs4341->fmt) {
	case SND_SOC_DAIFMT_I2S:
		mode = b24 ? CS4341_MODE2_DIF_I2S_24 : CS4341_MODE2_DIF_I2S_16;
		break;
	case SND_SOC_DAIFMT_LEFT_J:
		mode = CS4341_MODE2_DIF_LJ_24;
		break;
	case SND_SOC_DAIFMT_RIGHT_J:
		mode = b24 ? CS4341_MODE2_DIF_RJ_24 : CS4341_MODE2_DIF_RJ_16;
		break;
	default:
		FUNC0(component->dev, "Unsupported DAI format 0x%08x.\n",
			cs4341->fmt);
		return -EINVAL;
	}

	return FUNC3(component, CS4341_REG_MODE2,
					     CS4341_MODE2_DIF, mode);
}