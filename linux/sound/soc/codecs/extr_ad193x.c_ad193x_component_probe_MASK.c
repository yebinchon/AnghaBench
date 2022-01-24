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
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct ad193x_priv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ad193x_adc_audio_paths ; 
 int /*<<< orphan*/  ad193x_adc_snd_controls ; 
 int /*<<< orphan*/  ad193x_adc_widgets ; 
 scalar_t__ FUNC1 (struct ad193x_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct ad193x_priv*) ; 
 int FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 struct snd_soc_dapm_context* FUNC4 (struct snd_soc_component*) ; 
 struct ad193x_priv* FUNC5 (struct snd_soc_component*) ; 
 int FUNC6 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct snd_soc_component *component)
{
	struct ad193x_priv *ad193x = FUNC5(component);
	struct snd_soc_dapm_context *dapm = FUNC4(component);
	int num, ret;

	/* default setting for ad193x */
	FUNC2(ad193x);

	/* adc only */
	if (FUNC1(ad193x)) {
		/* add adc controls */
		num = FUNC0(ad193x_adc_snd_controls);
		ret = FUNC3(component,
						 ad193x_adc_snd_controls,
						 num);
		if (ret)
			return ret;

		/* add adc widgets */
		num = FUNC0(ad193x_adc_widgets);
		ret = FUNC7(dapm,
						ad193x_adc_widgets,
						num);
		if (ret)
			return ret;

		/* add adc routes */
		num = FUNC0(ad193x_adc_audio_paths);
		ret = FUNC6(dapm,
					      ad193x_adc_audio_paths,
					      num);
		if (ret)
			return ret;
	}

	return 0;
}