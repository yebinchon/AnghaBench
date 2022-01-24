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
struct ssm2602_priv {int type; struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct device {int dummy; } ;
typedef  enum ssm2602_type { ____Placeholder_ssm2602_type } ssm2602_type ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct ssm2602_priv*) ; 
 struct ssm2602_priv* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  soc_component_dev_ssm2602 ; 
 int /*<<< orphan*/  ssm2602_dai ; 

int FUNC5(struct device *dev, enum ssm2602_type type,
	struct regmap *regmap)
{
	struct ssm2602_priv *ssm2602;

	if (FUNC0(regmap))
		return FUNC1(regmap);

	ssm2602 = FUNC3(dev, sizeof(*ssm2602), GFP_KERNEL);
	if (ssm2602 == NULL)
		return -ENOMEM;

	FUNC2(dev, ssm2602);
	ssm2602->type = type;
	ssm2602->regmap = regmap;

	return FUNC4(dev, &soc_component_dev_ssm2602,
		&ssm2602_dai, 1);
}