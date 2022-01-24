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
struct snd_soc_component {int dummy; } ;
struct pcm186x_priv {int /*<<< orphan*/  supplies; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCM186X_POWER_CTRL ; 
 int /*<<< orphan*/  PCM186X_PWR_CTRL_PWRDN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pcm186x_priv* FUNC3 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_component *component)
{
	struct pcm186x_priv *priv = FUNC3(component);
	int ret;

	FUNC4(component, PCM186X_POWER_CTRL,
			    PCM186X_PWR_CTRL_PWRDN, PCM186X_PWR_CTRL_PWRDN);

	FUNC1(priv->regmap, true);

	ret = FUNC2(FUNC0(priv->supplies),
				     priv->supplies);
	if (ret)
		return ret;

	return 0;
}