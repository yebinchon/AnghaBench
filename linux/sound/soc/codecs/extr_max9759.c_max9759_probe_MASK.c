#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct max9759 {int is_mute; TYPE_1__* gpiod_gain; scalar_t__ gain; TYPE_1__* gpiod_mute; TYPE_1__* gpiod_shutdown; } ;
struct TYPE_4__ {int ndescs; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 void* FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct max9759* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max9759_component_driver ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct max9759*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct max9759 *priv;
	int err;

	priv = FUNC5(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC7(pdev, priv);

	priv->gpiod_shutdown = FUNC3(dev, "shutdown", GPIOD_OUT_HIGH);
	if (FUNC0(priv->gpiod_shutdown)) {
		err = FUNC1(priv->gpiod_shutdown);
		if (err != -EPROBE_DEFER)
			FUNC2(dev, "Failed to get 'shutdown' gpio: %d", err);
		return err;
	}

	priv->gpiod_mute = FUNC3(dev, "mute", GPIOD_OUT_HIGH);
	if (FUNC0(priv->gpiod_mute)) {
		err = FUNC1(priv->gpiod_mute);
		if (err != -EPROBE_DEFER)
			FUNC2(dev, "Failed to get 'mute' gpio: %d", err);
		return err;
	}
	priv->is_mute = true;

	priv->gpiod_gain = FUNC4(dev, "gain", GPIOD_OUT_HIGH);
	if (FUNC0(priv->gpiod_gain)) {
		err = FUNC1(priv->gpiod_gain);
		if (err != -EPROBE_DEFER)
			FUNC2(dev, "Failed to get 'gain' gpios: %d", err);
		return err;
	}
	priv->gain = 0;

	if (priv->gpiod_gain->ndescs != 2) {
		FUNC2(dev, "Invalid 'gain' gpios count: %d",
			priv->gpiod_gain->ndescs);
		return -EINVAL;
	}

	return FUNC6(dev, &max9759_component_driver,
					       NULL, 0);
}