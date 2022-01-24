#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct uda134x_priv {int /*<<< orphan*/  regmap; struct uda134x_platform_data* pd; } ;
struct TYPE_8__ {scalar_t__ use_gpios; } ;
struct uda134x_platform_data {TYPE_2__ l3; } ;
struct TYPE_7__ {struct uda134x_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 struct uda134x_priv* FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,struct uda134x_platform_data*,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct uda134x_priv*) ; 
 int /*<<< orphan*/  soc_component_dev_uda134x ; 
 int /*<<< orphan*/  uda134x_dai ; 
 int /*<<< orphan*/  uda134x_regmap_config ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct uda134x_platform_data *pd = pdev->dev.platform_data;
	struct uda134x_priv *uda134x;
	int ret;

	if (!pd) {
		FUNC2(&pdev->dev, "Missing L3 bitbang function\n");
		return -ENODEV;
	}

	uda134x = FUNC3(&pdev->dev, sizeof(*uda134x), GFP_KERNEL);
	if (!uda134x)
		return -ENOMEM;

	uda134x->pd = pd;
	FUNC7(pdev, uda134x);

	if (pd->l3.use_gpios) {
		ret = FUNC6(&pdev->dev, &uda134x->pd->l3);
		if (ret < 0)
			return ret;
	}

	uda134x->regmap = FUNC4(&pdev->dev, NULL, pd,
		&uda134x_regmap_config);
	if (FUNC0(uda134x->regmap))
		return FUNC1(uda134x->regmap);

	return FUNC5(&pdev->dev,
			&soc_component_dev_uda134x, &uda134x_dai, 1);
}