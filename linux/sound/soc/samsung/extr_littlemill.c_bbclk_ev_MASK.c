#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_pcm_runtime {struct snd_soc_dai* cpu_dai; } ;
struct snd_soc_dapm_widget {TYPE_1__* dapm; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_card {TYPE_2__* dai_link; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {struct snd_soc_card* card; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SND_SOC_CLOCK_IN ; 
#define  SND_SOC_DAPM_POST_PMD 129 
#define  SND_SOC_DAPM_PRE_PMU 128 
 int /*<<< orphan*/  WM8994_FLL2 ; 
 int /*<<< orphan*/  WM8994_FLL_SRC_BCLK ; 
 int /*<<< orphan*/  WM8994_SYSCLK_FLL2 ; 
 int /*<<< orphan*/  WM8994_SYSCLK_MCLK2 ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct snd_soc_dai*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct snd_soc_dai*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct snd_soc_pcm_runtime* FUNC3 (struct snd_soc_card*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dapm_widget *w,
		    struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_card *card = w->dapm->card;
	struct snd_soc_pcm_runtime *rtd;
	struct snd_soc_dai *aif2_dai;
	int ret;

	rtd = FUNC3(card, card->dai_link[1].name);
	aif2_dai = rtd->cpu_dai;

	switch (event) {
	case SND_SOC_DAPM_PRE_PMU:
		ret = FUNC1(aif2_dai, WM8994_FLL2,
					  WM8994_FLL_SRC_BCLK, 64 * 8000,
					  8000 * 256);
		if (ret < 0) {
			FUNC0("Failed to start FLL: %d\n", ret);
			return ret;
		}

		ret = FUNC2(aif2_dai, WM8994_SYSCLK_FLL2,
					     8000 * 256,
					     SND_SOC_CLOCK_IN);
		if (ret < 0) {
			FUNC0("Failed to set SYSCLK: %d\n", ret);
			return ret;
		}
		break;
	case SND_SOC_DAPM_POST_PMD:
		ret = FUNC2(aif2_dai, WM8994_SYSCLK_MCLK2,
					     32768, SND_SOC_CLOCK_IN);
		if (ret < 0) {
			FUNC0("Failed to switch away from FLL2: %d\n", ret);
			return ret;
		}

		ret = FUNC1(aif2_dai, WM8994_FLL2,
					  0, 0, 0);
		if (ret < 0) {
			FUNC0("Failed to stop FLL2: %d\n", ret);
			return ret;
		}
		break;
	default:
		return -EINVAL;
	}

	return 0;
}