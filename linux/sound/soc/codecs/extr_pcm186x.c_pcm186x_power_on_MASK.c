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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct pcm186x_priv {int /*<<< orphan*/  supplies; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCM186X_POWER_CTRL ; 
 int /*<<< orphan*/  PCM186X_PWR_CTRL_PWRDN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pcm186x_priv* FUNC6 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct snd_soc_component *component)
{
	struct pcm186x_priv *priv = FUNC6(component);
	int ret = 0;

	ret = FUNC5(FUNC0(priv->supplies),
				    priv->supplies);
	if (ret)
		return ret;

	FUNC2(priv->regmap, false);
	ret = FUNC3(priv->regmap);
	if (ret) {
		FUNC1(component->dev, "Failed to restore cache\n");
		FUNC2(priv->regmap, true);
		FUNC4(FUNC0(priv->supplies),
				       priv->supplies);
		return ret;
	}

	FUNC7(component, PCM186X_POWER_CTRL,
			    PCM186X_PWR_CTRL_PWRDN, 0);

	return 0;
}