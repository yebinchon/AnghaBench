#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct es7134_data {TYPE_1__* chip; } ;
struct TYPE_2__ {int /*<<< orphan*/  dai_drv; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct es7134_data* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  es7134_component_driver ; 
 TYPE_1__* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct es7134_data*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct es7134_data *priv;

	priv = FUNC1(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;
	FUNC4(pdev, priv);

	priv->chip = FUNC3(dev);
	if (!priv->chip) {
		FUNC0(dev, "failed to match device\n");
		return -ENODEV;
	}

	return FUNC2(&pdev->dev,
				      &es7134_component_driver,
				      priv->chip->dai_drv, 1);
}