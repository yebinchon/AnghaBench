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
struct wm5102_priv {TYPE_1__ core; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct arizona {struct snd_soc_dapm_context* dapm; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  arizona_adsp2_rate_controls ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*) ; 
 int FUNC1 (struct snd_soc_component*) ; 
 int FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,char*) ; 
 struct snd_soc_dapm_context* FUNC4 (struct snd_soc_component*) ; 
 struct wm5102_priv* FUNC5 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC9(struct snd_soc_component *component)
{
	struct snd_soc_dapm_context *dapm = FUNC4(component);
	struct wm5102_priv *priv = FUNC5(component);
	struct arizona *arizona = priv->core.arizona;
	int ret;

	FUNC6(component, arizona->regmap);

	ret = FUNC7(&priv->core.adsp[0], component);
	if (ret)
		return ret;

	ret = FUNC2(component,
					     arizona_adsp2_rate_controls, 1);
	if (ret)
		goto err_adsp2_codec_probe;

	ret = FUNC1(component);
	if (ret < 0)
		return ret;

	FUNC0(component);

	FUNC3(component, "HAPTICS");

	priv->core.arizona->dapm = dapm;

	return 0;

err_adsp2_codec_probe:
	FUNC8(&priv->core.adsp[0], component);

	return ret;
}