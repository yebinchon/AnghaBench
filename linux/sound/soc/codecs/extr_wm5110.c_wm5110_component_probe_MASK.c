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
struct TYPE_2__ {int /*<<< orphan*/ * adsp; struct arizona* arizona; } ;
struct wm5110_priv {TYPE_1__ core; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct arizona {int /*<<< orphan*/  regmap; struct snd_soc_dapm_context* dapm; } ;

/* Variables and functions */
 int WM5110_NUM_ADSP ; 
 int /*<<< orphan*/  arizona_adsp2_rate_controls ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*) ; 
 int FUNC2 (struct snd_soc_component*) ; 
 int FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,char*) ; 
 struct snd_soc_dapm_context* FUNC5 (struct snd_soc_component*) ; 
 struct wm5110_priv* FUNC6 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC10(struct snd_soc_component *component)
{
	struct snd_soc_dapm_context *dapm = FUNC5(component);
	struct wm5110_priv *priv = FUNC6(component);
	struct arizona *arizona = priv->core.arizona;
	int i, ret;

	arizona->dapm = dapm;
	FUNC7(component, arizona->regmap);

	ret = FUNC2(component);
	if (ret < 0)
		return ret;

	FUNC0(component);
	FUNC1(component);

	for (i = 0; i < WM5110_NUM_ADSP; ++i) {
		ret = FUNC8(&priv->core.adsp[i], component);
		if (ret)
			goto err_adsp2_codec_probe;
	}

	ret = FUNC3(component,
					     arizona_adsp2_rate_controls,
					     WM5110_NUM_ADSP);
	if (ret)
		goto err_adsp2_codec_probe;

	FUNC4(component, "HAPTICS");

	return 0;

err_adsp2_codec_probe:
	for (--i; i >= 0; --i)
		FUNC9(&priv->core.adsp[i], component);

	return ret;
}