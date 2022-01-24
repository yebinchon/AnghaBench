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
struct rfkill_gpio_data {char const* name; int /*<<< orphan*/  rfkill_dev; int /*<<< orphan*/  type; struct gpio_desc* shutdown_gpio; struct gpio_desc* reset_gpio; int /*<<< orphan*/  clk; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct gpio_desc {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC1 (struct gpio_desc*) ; 
 int FUNC2 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char const*) ; 
 char const* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char const**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct gpio_desc* FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct rfkill_gpio_data* FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct rfkill_gpio_data*) ; 
 int /*<<< orphan*/  FUNC11 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct rfkill_gpio_data*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char const*) ; 
 int FUNC14 (int /*<<< orphan*/ *,struct rfkill_gpio_data*) ; 
 int /*<<< orphan*/  rfkill_gpio_ops ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct rfkill_gpio_data *rfkill;
	struct gpio_desc *gpio;
	const char *type_name;
	int ret;

	rfkill = FUNC9(&pdev->dev, sizeof(*rfkill), GFP_KERNEL);
	if (!rfkill)
		return -ENOMEM;

	FUNC6(&pdev->dev, "name", &rfkill->name);
	FUNC6(&pdev->dev, "type", &type_name);

	if (!rfkill->name)
		rfkill->name = FUNC5(&pdev->dev);

	rfkill->type = FUNC13(type_name);

	if (FUNC0(&pdev->dev)) {
		ret = FUNC14(&pdev->dev, rfkill);
		if (ret)
			return ret;
	}

	rfkill->clk = FUNC7(&pdev->dev, NULL);

	gpio = FUNC8(&pdev->dev, "reset", GPIOD_OUT_LOW);
	if (FUNC1(gpio))
		return FUNC2(gpio);

	rfkill->reset_gpio = gpio;

	gpio = FUNC8(&pdev->dev, "shutdown", GPIOD_OUT_LOW);
	if (FUNC1(gpio))
		return FUNC2(gpio);

	rfkill->shutdown_gpio = gpio;

	/* Make sure at-least one GPIO is defined for this instance */
	if (!rfkill->reset_gpio && !rfkill->shutdown_gpio) {
		FUNC3(&pdev->dev, "invalid platform data\n");
		return -EINVAL;
	}

	rfkill->rfkill_dev = FUNC11(rfkill->name, &pdev->dev,
					  rfkill->type, &rfkill_gpio_ops,
					  rfkill);
	if (!rfkill->rfkill_dev)
		return -ENOMEM;

	ret = FUNC15(rfkill->rfkill_dev);
	if (ret < 0)
		goto err_destroy;

	FUNC10(pdev, rfkill);

	FUNC4(&pdev->dev, "%s device registered.\n", rfkill->name);

	return 0;

err_destroy:
	FUNC12(rfkill->rfkill_dev);

	return ret;
}