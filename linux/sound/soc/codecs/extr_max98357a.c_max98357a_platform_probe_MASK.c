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
struct max98357a_priv {scalar_t__ sdmode_delay; int /*<<< orphan*/  sdmode; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct max98357a_priv*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct max98357a_priv* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  max98357a_component_driver ; 
 int /*<<< orphan*/  max98357a_dai_driver ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct max98357a_priv *max98357a;
	int ret;

	max98357a = FUNC6(&pdev->dev, sizeof(*max98357a), GFP_KERNEL);
	if (!max98357a)
		return -ENOMEM;

	max98357a->sdmode = FUNC5(&pdev->dev,
				"sdmode", GPIOD_OUT_LOW);
	if (FUNC0(max98357a->sdmode))
		return FUNC1(max98357a->sdmode);

	ret = FUNC4(&pdev->dev, "sdmode-delay",
					&max98357a->sdmode_delay);
	if (ret) {
		max98357a->sdmode_delay = 0;
		FUNC2(&pdev->dev,
			"no optional property 'sdmode-delay' found, "
			"default: no delay\n");
	}

	FUNC3(&pdev->dev, max98357a);

	return FUNC7(&pdev->dev,
			&max98357a_component_driver,
			&max98357a_dai_driver, 1);
}