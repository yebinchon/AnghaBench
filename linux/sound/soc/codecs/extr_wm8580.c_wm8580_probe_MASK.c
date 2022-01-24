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
struct wm8580_priv {int /*<<< orphan*/  supplies; TYPE_1__* drvdata; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int num_dacs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM8580_RESET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_soc_dapm_context* FUNC5 (struct snd_soc_component*) ; 
 struct wm8580_priv* FUNC6 (struct snd_soc_component*) ; 
 int FUNC7 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wm8581_dapm_routes ; 
 int /*<<< orphan*/  wm8581_dapm_widgets ; 
 int /*<<< orphan*/  wm8581_snd_controls ; 

__attribute__((used)) static int FUNC10(struct snd_soc_component *component)
{
	struct wm8580_priv *wm8580 = FUNC6(component);
	struct snd_soc_dapm_context *dapm = FUNC5(component);
	int ret = 0;

	switch (wm8580->drvdata->num_dacs) {
	case 4:
		FUNC4(component, wm8581_snd_controls,
					FUNC0(wm8581_snd_controls));
		FUNC9(dapm, wm8581_dapm_widgets,
					FUNC0(wm8581_dapm_widgets));
		FUNC8(dapm, wm8581_dapm_routes,
					FUNC0(wm8581_dapm_routes));
		break;
	default:
		break;
	}

	ret = FUNC3(FUNC0(wm8580->supplies),
				    wm8580->supplies);
	if (ret != 0) {
		FUNC1(component->dev, "Failed to enable supplies: %d\n", ret);
		goto err_regulator_get;
	}

	/* Get the codec into a known state */
	ret = FUNC7(component, WM8580_RESET, 0);
	if (ret != 0) {
		FUNC1(component->dev, "Failed to reset component: %d\n", ret);
		goto err_regulator_enable;
	}

	return 0;

err_regulator_enable:
	FUNC2(FUNC0(wm8580->supplies), wm8580->supplies);
err_regulator_get:
	return ret;
}