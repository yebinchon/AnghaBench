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
struct wm8985_priv {int dev_type; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  WM8758 129 
#define  WM8985 128 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_soc_dapm_context* FUNC2 (struct snd_soc_component*) ; 
 struct wm8985_priv* FUNC3 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wm8758_dapm_widgets ; 
 int /*<<< orphan*/  wm8985_aux_dapm_routes ; 
 int /*<<< orphan*/  wm8985_dapm_widgets ; 
 int /*<<< orphan*/  wm8985_specific_snd_controls ; 

__attribute__((used)) static int FUNC6(struct snd_soc_component *component)
{
	struct wm8985_priv *wm8985 = FUNC3(component);
	struct snd_soc_dapm_context *dapm = FUNC2(component);

	switch (wm8985->dev_type) {
	case WM8758:
		FUNC5(dapm, wm8758_dapm_widgets,
					  FUNC0(wm8758_dapm_widgets));
		break;

	case WM8985:
		FUNC1(component, wm8985_specific_snd_controls,
			FUNC0(wm8985_specific_snd_controls));

		FUNC5(dapm, wm8985_dapm_widgets,
			FUNC0(wm8985_dapm_widgets));
		FUNC4(dapm, wm8985_aux_dapm_routes,
			FUNC0(wm8985_aux_dapm_routes));
		break;
	}

	return 0;
}