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
struct TYPE_2__ {struct arizona* arizona; } ;
struct wm8998_priv {TYPE_1__ core; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct arizona {int /*<<< orphan*/  regmap; struct snd_soc_dapm_context* dapm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*) ; 
 int FUNC1 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,char*) ; 
 struct snd_soc_dapm_context* FUNC3 (struct snd_soc_component*) ; 
 struct wm8998_priv* FUNC4 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_component *component)
{
	struct wm8998_priv *priv = FUNC4(component);
	struct snd_soc_dapm_context *dapm = FUNC3(component);
	struct arizona *arizona = priv->core.arizona;
	int ret;

	arizona->dapm = dapm;
	FUNC5(component, arizona->regmap);

	ret = FUNC1(component);
	if (ret < 0)
		return ret;

	FUNC0(component);

	FUNC2(component, "HAPTICS");

	return 0;
}