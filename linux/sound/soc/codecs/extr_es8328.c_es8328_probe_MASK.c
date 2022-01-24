#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct regmap {int dummy; } ;
struct es8328_priv {TYPE_1__* supplies; struct regmap* regmap; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  supply; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct regmap*) ; 
 int FUNC2 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct es8328_priv*) ; 
 struct es8328_priv* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int,TYPE_1__*) ; 
 int FUNC7 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  es8328_component_driver ; 
 int /*<<< orphan*/  es8328_dai ; 
 int /*<<< orphan*/ * supply_names ; 

int FUNC8(struct device *dev, struct regmap *regmap)
{
	struct es8328_priv *es8328;
	int ret;
	int i;

	if (FUNC1(regmap))
		return FUNC2(regmap);

	es8328 = FUNC5(dev, sizeof(*es8328), GFP_KERNEL);
	if (es8328 == NULL)
		return -ENOMEM;

	es8328->regmap = regmap;

	for (i = 0; i < FUNC0(es8328->supplies); i++)
		es8328->supplies[i].supply = supply_names[i];

	ret = FUNC6(dev, FUNC0(es8328->supplies),
				es8328->supplies);
	if (ret) {
		FUNC3(dev, "unable to get regulators\n");
		return ret;
	}

	FUNC4(dev, es8328);

	return FUNC7(dev,
			&es8328_component_driver, &es8328_dai, 1);
}