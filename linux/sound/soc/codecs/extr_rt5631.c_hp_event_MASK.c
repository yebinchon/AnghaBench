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
struct rt5631_priv {int /*<<< orphan*/  codec_version; } ;

/* Variables and functions */
#define  SND_SOC_DAPM_POST_PMU 129 
#define  SND_SOC_DAPM_PRE_PMD 128 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int) ; 
 struct rt5631_priv* FUNC4 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_dapm_widget *w,
	struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC5(w->dapm);
	struct rt5631_priv *rt5631 = FUNC4(component);

	switch (event) {
	case SND_SOC_DAPM_PRE_PMD:
		if (rt5631->codec_version) {
			FUNC2(component, 0);
			FUNC3(component, 0);
		} else {
			FUNC0(component, 0);
			FUNC1(component, 0);
		}
		break;

	case SND_SOC_DAPM_POST_PMU:
		if (rt5631->codec_version) {
			FUNC3(component, 1);
			FUNC2(component, 1);
		} else {
			FUNC1(component, 1);
			FUNC0(component, 1);
		}
		break;

	default:
		break;
	}

	return 0;
}