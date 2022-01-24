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
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct rt5631_priv {int rx_rate; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RT5631_DIG_MIC_CTRL ; 
 int /*<<< orphan*/  RT5631_DMIC_CLK_CTRL_MASK ; 
 int /*<<< orphan*/  RT5631_DMIC_CLK_CTRL_TO_128FS ; 
 int /*<<< orphan*/  RT5631_DMIC_CLK_CTRL_TO_32FS ; 
 int /*<<< orphan*/  RT5631_DMIC_CLK_CTRL_TO_64FS ; 
 struct rt5631_priv* FUNC0 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_soc_component* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dapm_widget *w,
	struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC2(w->dapm);
	struct rt5631_priv *rt5631 = FUNC0(component);

	switch (rt5631->rx_rate) {
	case 44100:
	case 48000:
		FUNC1(component, RT5631_DIG_MIC_CTRL,
			RT5631_DMIC_CLK_CTRL_MASK,
			RT5631_DMIC_CLK_CTRL_TO_32FS);
		break;

	case 32000:
	case 22050:
		FUNC1(component, RT5631_DIG_MIC_CTRL,
			RT5631_DMIC_CLK_CTRL_MASK,
			RT5631_DMIC_CLK_CTRL_TO_64FS);
		break;

	case 16000:
	case 11025:
	case 8000:
		FUNC1(component, RT5631_DIG_MIC_CTRL,
			RT5631_DMIC_CLK_CTRL_MASK,
			RT5631_DMIC_CLK_CTRL_TO_128FS);
		break;

	default:
		return -EINVAL;
	}

	return 0;
}