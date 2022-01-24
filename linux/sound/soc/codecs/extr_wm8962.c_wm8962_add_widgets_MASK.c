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
struct wm8962_pdata {scalar_t__ spk_mono; } ;
struct wm8962_priv {struct wm8962_pdata pdata; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_soc_dapm_context* FUNC2 (struct snd_soc_component*) ; 
 struct wm8962_priv* FUNC3 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wm8962_dapm_spk_mono_widgets ; 
 int /*<<< orphan*/  wm8962_dapm_spk_stereo_widgets ; 
 int /*<<< orphan*/  wm8962_dapm_widgets ; 
 int /*<<< orphan*/  wm8962_intercon ; 
 int /*<<< orphan*/  wm8962_snd_controls ; 
 int /*<<< orphan*/  wm8962_spk_mono_controls ; 
 int /*<<< orphan*/  wm8962_spk_mono_intercon ; 
 int /*<<< orphan*/  wm8962_spk_stereo_controls ; 
 int /*<<< orphan*/  wm8962_spk_stereo_intercon ; 

__attribute__((used)) static int FUNC7(struct snd_soc_component *component)
{
	struct wm8962_priv *wm8962 = FUNC3(component);
	struct wm8962_pdata *pdata = &wm8962->pdata;
	struct snd_soc_dapm_context *dapm = FUNC2(component);

	FUNC1(component, wm8962_snd_controls,
			     FUNC0(wm8962_snd_controls));
	if (pdata->spk_mono)
		FUNC1(component, wm8962_spk_mono_controls,
				     FUNC0(wm8962_spk_mono_controls));
	else
		FUNC1(component, wm8962_spk_stereo_controls,
				     FUNC0(wm8962_spk_stereo_controls));


	FUNC6(dapm, wm8962_dapm_widgets,
				  FUNC0(wm8962_dapm_widgets));
	if (pdata->spk_mono)
		FUNC6(dapm, wm8962_dapm_spk_mono_widgets,
					  FUNC0(wm8962_dapm_spk_mono_widgets));
	else
		FUNC6(dapm, wm8962_dapm_spk_stereo_widgets,
					  FUNC0(wm8962_dapm_spk_stereo_widgets));

	FUNC4(dapm, wm8962_intercon,
				FUNC0(wm8962_intercon));
	if (pdata->spk_mono)
		FUNC4(dapm, wm8962_spk_mono_intercon,
					FUNC0(wm8962_spk_mono_intercon));
	else
		FUNC4(dapm, wm8962_spk_stereo_intercon,
					FUNC0(wm8962_spk_stereo_intercon));


	FUNC5(dapm, "Beep");

	return 0;
}