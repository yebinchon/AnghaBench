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
struct wm8524_priv {int /*<<< orphan*/  mute; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct wm8524_priv* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct wm8524_priv*) ; 
 int /*<<< orphan*/  soc_component_dev_wm8524 ; 
 int /*<<< orphan*/  wm8524_dai ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct wm8524_priv *wm8524;
	int ret;

	wm8524 = FUNC4(&pdev->dev, sizeof(struct wm8524_priv),
						  GFP_KERNEL);
	if (wm8524 == NULL)
		return -ENOMEM;

	FUNC6(pdev, wm8524);

	wm8524->mute = FUNC3(&pdev->dev, "wlf,mute", GPIOD_OUT_LOW);
	if (FUNC0(wm8524->mute)) {
		ret = FUNC1(wm8524->mute);
		FUNC2(&pdev->dev, "Failed to get mute line: %d\n", ret);
		return ret;
	}

	ret = FUNC5(&pdev->dev,
			&soc_component_dev_wm8524, &wm8524_dai, 1);
	if (ret < 0)
		FUNC2(&pdev->dev, "Failed to register component: %d\n", ret);

	return ret;
}