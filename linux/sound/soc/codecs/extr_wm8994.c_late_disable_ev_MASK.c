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
struct wm8994_priv {int /*<<< orphan*/  aif2clk_disable; int /*<<< orphan*/  aif1clk_disable; } ;
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
#define  SND_SOC_DAPM_POST_PMD 128 
 int const SND_SOC_DAPM_PRE_PMD ; 
 int /*<<< orphan*/  WM8994_AIF1CLK_ENA_MASK ; 
 int /*<<< orphan*/  WM8994_AIF1_CLOCKING_1 ; 
 int /*<<< orphan*/  WM8994_AIF2CLK_ENA_MASK ; 
 int /*<<< orphan*/  WM8994_AIF2_CLOCKING_1 ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_dapm_widget*,struct snd_kcontrol*,int const) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_dapm_widget*,struct snd_kcontrol*,int const) ; 
 struct wm8994_priv* FUNC2 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_soc_component* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_dapm_widget *w,
			   struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC4(w->dapm);
	struct wm8994_priv *wm8994 = FUNC2(component);

	switch (event) {
	case SND_SOC_DAPM_POST_PMD:
		if (wm8994->aif1clk_disable) {
			FUNC0(w, kcontrol, SND_SOC_DAPM_PRE_PMD);
			FUNC3(component, WM8994_AIF1_CLOCKING_1,
					    WM8994_AIF1CLK_ENA_MASK, 0);
			FUNC0(w, kcontrol, SND_SOC_DAPM_POST_PMD);
			wm8994->aif1clk_disable = 0;
		}
		if (wm8994->aif2clk_disable) {
			FUNC1(w, kcontrol, SND_SOC_DAPM_PRE_PMD);
			FUNC3(component, WM8994_AIF2_CLOCKING_1,
					    WM8994_AIF2CLK_ENA_MASK, 0);
			FUNC1(w, kcontrol, SND_SOC_DAPM_POST_PMD);
			wm8994->aif2clk_disable = 0;
		}
		break;
	}

	return 0;
}