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
struct aic31xx_priv {int /*<<< orphan*/  supplies; int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct aic31xx_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct aic31xx_priv* FUNC7 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC8(struct snd_soc_component *component)
{
	struct aic31xx_priv *aic31xx = FUNC7(component);
	int ret;

	ret = FUNC6(FUNC0(aic31xx->supplies),
				    aic31xx->supplies);
	if (ret)
		return ret;

	FUNC3(aic31xx->regmap, false);

	/* Reset device registers for a consistent power-on like state */
	ret = FUNC1(aic31xx);
	if (ret < 0)
		FUNC2(aic31xx->dev, "Could not reset device: %d\n", ret);

	ret = FUNC4(aic31xx->regmap);
	if (ret) {
		FUNC2(component->dev,
			"Failed to restore cache: %d\n", ret);
		FUNC3(aic31xx->regmap, true);
		FUNC5(FUNC0(aic31xx->supplies),
				       aic31xx->supplies);
		return ret;
	}

	return 0;
}