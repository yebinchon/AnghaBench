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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct gpio_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC0 (struct gpio_desc*) ; 
 int FUNC1 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct gpio_desc* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct gpio_desc*) ; 
 int /*<<< orphan*/  snd_soc_smartq ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct gpio_desc *gpio;
	int ret;

	FUNC5(pdev, &snd_soc_smartq);

	/* Initialise GPIOs used by amplifiers */
	gpio = FUNC3(&pdev->dev, "amplifiers shutdown",
			      GPIOD_OUT_HIGH);
	if (FUNC0(gpio)) {
		FUNC2(&pdev->dev, "Failed to register GPK12\n");
		ret = FUNC1(gpio);
		goto out;
	}
	FUNC6(&snd_soc_smartq, gpio);

	ret = FUNC4(&pdev->dev, &snd_soc_smartq);
	if (ret)
		FUNC2(&pdev->dev, "Failed to register card\n");

out:
	return ret;
}