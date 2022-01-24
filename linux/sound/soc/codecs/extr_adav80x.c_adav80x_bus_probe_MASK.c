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
struct adav80x {struct regmap* regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct regmap*) ; 
 int FUNC2 (struct regmap*) ; 
 int /*<<< orphan*/  adav80x_component_driver ; 
 int /*<<< orphan*/  adav80x_dais ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct adav80x*) ; 
 struct adav80x* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct device *dev, struct regmap *regmap)
{
	struct adav80x *adav80x;

	if (FUNC1(regmap))
		return FUNC2(regmap);

	adav80x = FUNC4(dev, sizeof(*adav80x), GFP_KERNEL);
	if (!adav80x)
		return -ENOMEM;

	FUNC3(dev, adav80x);
	adav80x->regmap = regmap;

	return FUNC5(dev, &adav80x_component_driver,
		adav80x_dais, FUNC0(adav80x_dais));
}