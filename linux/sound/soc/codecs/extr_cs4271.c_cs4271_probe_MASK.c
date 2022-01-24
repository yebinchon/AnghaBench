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
struct regmap {int dummy; } ;
struct device {int dummy; } ;
struct cs4271_private {struct regmap* regmap; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int FUNC2 (struct device*,struct cs4271_private**) ; 
 int /*<<< orphan*/  cs4271_dai ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct cs4271_private*) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  soc_component_dev_cs4271 ; 

int FUNC5(struct device *dev, struct regmap *regmap)
{
	struct cs4271_private *cs4271;
	int ret;

	if (FUNC0(regmap))
		return FUNC1(regmap);

	ret = FUNC2(dev, &cs4271);
	if (ret < 0)
		return ret;

	FUNC3(dev, cs4271);
	cs4271->regmap = regmap;

	return FUNC4(dev, &soc_component_dev_cs4271,
					       &cs4271_dai, 1);
}