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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct es7241_data {void* m1; void* m0; void* reset; int /*<<< orphan*/  chip; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 void* FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct es7241_data* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  es7241_component_driver ; 
 int /*<<< orphan*/  es7241_dai ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct es7241_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct es7241_data*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct es7241_data *priv;
	int err;

	priv = FUNC4(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;
	FUNC8(pdev, priv);

	priv->chip = FUNC7(dev);
	if (!priv->chip) {
		FUNC2(dev, "failed to match device\n");
		return -ENODEV;
	}

	FUNC6(dev, priv);

	priv->reset = FUNC3(dev, "reset", GPIOD_OUT_LOW);
	if (FUNC0(priv->reset)) {
		err = FUNC1(priv->reset);
		if (err != -EPROBE_DEFER)
			FUNC2(dev, "Failed to get 'reset' gpio: %d", err);
		return err;
	}

	priv->m0 = FUNC3(dev, "m0", GPIOD_OUT_LOW);
	if (FUNC0(priv->m0)) {
		err = FUNC1(priv->m0);
		if (err != -EPROBE_DEFER)
			FUNC2(dev, "Failed to get 'm0' gpio: %d", err);
		return err;
	}

	priv->m1 = FUNC3(dev, "m1", GPIOD_OUT_LOW);
	if (FUNC0(priv->m1)) {
		err = FUNC1(priv->m1);
		if (err != -EPROBE_DEFER)
			FUNC2(dev, "Failed to get 'm1' gpio: %d", err);
		return err;
	}

	return FUNC5(&pdev->dev,
				      &es7241_component_driver,
				      &es7241_dai, 1);
}