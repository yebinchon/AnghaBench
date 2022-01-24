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
struct arizona_priv {struct arizona* arizona; } ;
struct arizona {int /*<<< orphan*/  dcvdd; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARIZONA_DYNAMIC_FREQUENCY_SCALING_1 ; 
 int /*<<< orphan*/  ARIZONA_SUBSYS_MAX_FREQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 struct arizona_priv* FUNC3 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_component *component)
{
	const struct arizona_priv *priv = FUNC3(component);
	struct arizona *arizona = priv->arizona;
	int ret;

	ret = FUNC1(arizona->regmap,
				 ARIZONA_DYNAMIC_FREQUENCY_SCALING_1,
				 ARIZONA_SUBSYS_MAX_FREQ, 0);
	if (ret) {
		FUNC0(component->dev, "Failed to disable subsys max: %d\n", ret);
		return ret;
	}

	ret = FUNC2(arizona->dcvdd, 1200000, 1800000);
	if (ret) {
		FUNC0(component->dev, "Failed to unboost DCVDD: %d\n", ret);
		return ret;
	}

	return 0;
}