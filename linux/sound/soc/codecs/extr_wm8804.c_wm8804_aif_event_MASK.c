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
struct wm8804_priv {int /*<<< orphan*/  aif_pwr; } ;
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
#define  SND_SOC_DAPM_POST_PMD 129 
#define  SND_SOC_DAPM_POST_PMU 128 
 int /*<<< orphan*/  WM8804_PWRDN ; 
 struct wm8804_priv* FUNC0 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 struct snd_soc_component* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dapm_widget *w,
			    struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC2(w->dapm);
	struct wm8804_priv *wm8804 = FUNC0(component);

	switch (event) {
	case SND_SOC_DAPM_POST_PMU:
		/* power up the aif */
		if (!wm8804->aif_pwr)
			FUNC1(component, WM8804_PWRDN, 0x10, 0x0);
		wm8804->aif_pwr++;
		break;
	case SND_SOC_DAPM_POST_PMD:
		/* power down only both paths are disabled */
		wm8804->aif_pwr--;
		if (!wm8804->aif_pwr)
			FUNC1(component, WM8804_PWRDN, 0x10, 0x10);
		break;
	}

	return 0;
}