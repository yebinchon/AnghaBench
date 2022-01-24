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
struct TYPE_2__ {int /*<<< orphan*/ * agc; scalar_t__ agc_ena; scalar_t__ lin2_diff; scalar_t__ lin1_diff; } ;
struct wm9090_priv {TYPE_1__ pdata; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ WM9090_AGC_CONTROL_0 ; 
 int /*<<< orphan*/  WM9090_AGC_ENA ; 
 int /*<<< orphan*/  WM9090_POWER_MANAGEMENT_3 ; 
 int /*<<< orphan*/ * audio_map ; 
 int /*<<< orphan*/ * audio_map_in1_diff ; 
 int /*<<< orphan*/ * audio_map_in1_se ; 
 int /*<<< orphan*/ * audio_map_in2_diff ; 
 int /*<<< orphan*/ * audio_map_in2_se ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ *,int) ; 
 struct snd_soc_dapm_context* FUNC2 (struct snd_soc_component*) ; 
 struct wm9090_priv* FUNC3 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_dapm_context*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_dapm_context*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * wm9090_controls ; 
 int /*<<< orphan*/ * wm9090_dapm_widgets ; 
 int /*<<< orphan*/ * wm9090_in1_se_controls ; 
 int /*<<< orphan*/ * wm9090_in2_se_controls ; 

__attribute__((used)) static int FUNC8(struct snd_soc_component *component)
{
	struct wm9090_priv *wm9090 = FUNC3(component);
	struct snd_soc_dapm_context *dapm = FUNC2(component);
	int i;

	FUNC7(dapm, wm9090_dapm_widgets,
				  FUNC0(wm9090_dapm_widgets));

	FUNC6(dapm, audio_map, FUNC0(audio_map));

	FUNC1(component, wm9090_controls,
			     FUNC0(wm9090_controls));

	if (wm9090->pdata.lin1_diff) {
		FUNC6(dapm, audio_map_in1_diff,
					FUNC0(audio_map_in1_diff));
	} else {
		FUNC6(dapm, audio_map_in1_se,
					FUNC0(audio_map_in1_se));
		FUNC1(component, wm9090_in1_se_controls,
				     FUNC0(wm9090_in1_se_controls));
	}

	if (wm9090->pdata.lin2_diff) {
		FUNC6(dapm, audio_map_in2_diff,
					FUNC0(audio_map_in2_diff));
	} else {
		FUNC6(dapm, audio_map_in2_se,
					FUNC0(audio_map_in2_se));
		FUNC1(component, wm9090_in2_se_controls,
				     FUNC0(wm9090_in2_se_controls));
	}

	if (wm9090->pdata.agc_ena) {
		for (i = 0; i < FUNC0(wm9090->pdata.agc); i++)
			FUNC5(component, WM9090_AGC_CONTROL_0 + i,
				      wm9090->pdata.agc[i]);
		FUNC4(component, WM9090_POWER_MANAGEMENT_3,
				    WM9090_AGC_ENA, WM9090_AGC_ENA);
	} else {
		FUNC4(component, WM9090_POWER_MANAGEMENT_3,
				    WM9090_AGC_ENA, 0);
	}

	return 0;

}