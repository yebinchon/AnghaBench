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
struct wm8962_priv {int /*<<< orphan*/  dsp2_ena; } ;
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SND_SOC_DAPM_POST_PMU 129 
#define  SND_SOC_DAPM_PRE_PMD 128 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 struct wm8962_priv* FUNC1 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_dapm_widget *w,
		      struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC2(w->dapm);
	struct wm8962_priv *wm8962 = FUNC1(component);

	switch (event) {
	case SND_SOC_DAPM_POST_PMU:
		if (wm8962->dsp2_ena)
			FUNC3(component);
		break;

	case SND_SOC_DAPM_PRE_PMD:
		if (wm8962->dsp2_ena)
			FUNC4(component);
		break;

	default:
		FUNC0(1, "Invalid event %d\n", event);
		return -EINVAL;
	}

	return 0;
}