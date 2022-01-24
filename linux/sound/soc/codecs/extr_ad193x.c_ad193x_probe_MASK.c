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
struct ad193x_priv {int type; struct regmap* regmap; } ;
typedef  enum ad193x_type { ____Placeholder_ad193x_type } ad193x_type ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  ad193x_dai ; 
 scalar_t__ FUNC2 (struct ad193x_priv*) ; 
 int /*<<< orphan*/  ad193x_no_adc_dai ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct ad193x_priv*) ; 
 struct ad193x_priv* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  soc_component_dev_ad193x ; 

int FUNC6(struct device *dev, struct regmap *regmap,
		 enum ad193x_type type)
{
	struct ad193x_priv *ad193x;

	if (FUNC0(regmap))
		return FUNC1(regmap);

	ad193x = FUNC4(dev, sizeof(*ad193x), GFP_KERNEL);
	if (ad193x == NULL)
		return -ENOMEM;

	ad193x->regmap = regmap;
	ad193x->type = type;

	FUNC3(dev, ad193x);

	if (FUNC2(ad193x))
		return FUNC5(dev, &soc_component_dev_ad193x,
						       &ad193x_dai, 1);
	return FUNC5(dev, &soc_component_dev_ad193x,
		&ad193x_no_adc_dai, 1);
}