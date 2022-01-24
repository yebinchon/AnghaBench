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
struct regmap {int dummy; } ;
struct es8328_priv {int /*<<< orphan*/  supplies; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct regmap* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct regmap*) ; 
 int FUNC5 (struct regmap*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct es8328_priv* FUNC7 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC8(struct snd_soc_component *component)
{
	struct regmap *regmap = FUNC3(component->dev, NULL);
	struct es8328_priv *es8328;
	int ret;

	es8328 = FUNC7(component);

	ret = FUNC1(es8328->clk);
	if (ret) {
		FUNC2(component->dev, "unable to enable clock\n");
		return ret;
	}

	ret = FUNC6(FUNC0(es8328->supplies),
					es8328->supplies);
	if (ret) {
		FUNC2(component->dev, "unable to enable regulators\n");
		return ret;
	}

	FUNC4(regmap);
	ret = FUNC5(regmap);
	if (ret) {
		FUNC2(component->dev, "unable to sync regcache\n");
		return ret;
	}

	return 0;
}