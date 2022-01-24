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
struct simple_amp {int /*<<< orphan*/  gpiod_enable; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct simple_amp* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct simple_amp*) ; 
 int /*<<< orphan*/  simple_amp_component_driver ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct simple_amp *priv;
	int err;

	priv = FUNC4(dev, sizeof(*priv), GFP_KERNEL);
	if (priv == NULL)
		return -ENOMEM;
	FUNC6(pdev, priv);

	priv->gpiod_enable = FUNC3(dev, "enable",
						     GPIOD_OUT_LOW);
	if (FUNC0(priv->gpiod_enable)) {
		err = FUNC1(priv->gpiod_enable);
		if (err != -EPROBE_DEFER)
			FUNC2(dev, "Failed to get 'enable' gpio: %d", err);
		return err;
	}

	return FUNC5(dev,
					       &simple_amp_component_driver,
					       NULL, 0);
}