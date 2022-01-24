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
struct wm8904_priv {int devtype; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  WM8904 129 
#define  WM8912 128 
 int /*<<< orphan*/  adc_intercon ; 
 int /*<<< orphan*/  core_intercon ; 
 int /*<<< orphan*/  dac_intercon ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_soc_dapm_context* FUNC2 (struct snd_soc_component*) ; 
 struct wm8904_priv* FUNC3 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wm8904_adc_dapm_widgets ; 
 int /*<<< orphan*/  wm8904_adc_snd_controls ; 
 int /*<<< orphan*/  wm8904_core_dapm_widgets ; 
 int /*<<< orphan*/  wm8904_dac_dapm_widgets ; 
 int /*<<< orphan*/  wm8904_dac_snd_controls ; 
 int /*<<< orphan*/  wm8904_dapm_widgets ; 
 int /*<<< orphan*/  wm8904_intercon ; 
 int /*<<< orphan*/  wm8904_snd_controls ; 
 int /*<<< orphan*/  wm8912_intercon ; 

__attribute__((used)) static int FUNC6(struct snd_soc_component *component)
{
	struct wm8904_priv *wm8904 = FUNC3(component);
	struct snd_soc_dapm_context *dapm = FUNC2(component);

	FUNC5(dapm, wm8904_core_dapm_widgets,
				  FUNC0(wm8904_core_dapm_widgets));
	FUNC4(dapm, core_intercon,
				FUNC0(core_intercon));

	switch (wm8904->devtype) {
	case WM8904:
		FUNC1(component, wm8904_adc_snd_controls,
				     FUNC0(wm8904_adc_snd_controls));
		FUNC1(component, wm8904_dac_snd_controls,
				     FUNC0(wm8904_dac_snd_controls));
		FUNC1(component, wm8904_snd_controls,
				     FUNC0(wm8904_snd_controls));

		FUNC5(dapm, wm8904_adc_dapm_widgets,
					  FUNC0(wm8904_adc_dapm_widgets));
		FUNC5(dapm, wm8904_dac_dapm_widgets,
					  FUNC0(wm8904_dac_dapm_widgets));
		FUNC5(dapm, wm8904_dapm_widgets,
					  FUNC0(wm8904_dapm_widgets));

		FUNC4(dapm, adc_intercon,
					FUNC0(adc_intercon));
		FUNC4(dapm, dac_intercon,
					FUNC0(dac_intercon));
		FUNC4(dapm, wm8904_intercon,
					FUNC0(wm8904_intercon));
		break;

	case WM8912:
		FUNC1(component, wm8904_dac_snd_controls,
				     FUNC0(wm8904_dac_snd_controls));

		FUNC5(dapm, wm8904_dac_dapm_widgets,
					  FUNC0(wm8904_dac_dapm_widgets));

		FUNC4(dapm, dac_intercon,
					FUNC0(dac_intercon));
		FUNC4(dapm, wm8912_intercon,
					FUNC0(wm8912_intercon));
		break;
	}

	return 0;
}