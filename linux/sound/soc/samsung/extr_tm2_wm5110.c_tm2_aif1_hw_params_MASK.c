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
struct tm2_machine_priv {unsigned int sysclk_rate; } ;
struct snd_soc_pcm_runtime {int /*<<< orphan*/  card; TYPE_1__* codec_dai; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {struct snd_soc_component* component; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct snd_pcm_hw_params*) ; 
 struct tm2_machine_priv* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
				struct snd_pcm_hw_params *params)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_component *component = rtd->codec_dai->component;
	struct tm2_machine_priv *priv = FUNC2(rtd->card);

	switch (FUNC1(params)) {
	case 4000:
	case 8000:
	case 12000:
	case 16000:
	case 24000:
	case 32000:
	case 48000:
	case 96000:
	case 192000:
		/* Highest possible SYSCLK frequency: 147.456MHz */
		priv->sysclk_rate = 147456000U;
		break;
	case 11025:
	case 22050:
	case 44100:
	case 88200:
	case 176400:
		/* Highest possible SYSCLK frequency: 135.4752 MHz */
		priv->sysclk_rate = 135475200U;
		break;
	default:
		FUNC0(component->dev, "Not supported sample rate: %d\n",
			FUNC1(params));
		return -EINVAL;
	}

	return FUNC3(rtd->card);
}