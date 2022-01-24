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
struct wm9713_priv {int /*<<< orphan*/  mfd_pdata; int /*<<< orphan*/  lock; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct wm9713_priv* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct wm9713_priv*) ; 
 int /*<<< orphan*/  soc_component_dev_wm9713 ; 
 int /*<<< orphan*/  wm9713_dai ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct wm9713_priv *wm9713;

	wm9713 = FUNC2(&pdev->dev, sizeof(*wm9713), GFP_KERNEL);
	if (wm9713 == NULL)
		return -ENOMEM;

	FUNC4(&wm9713->lock);

	wm9713->mfd_pdata = FUNC1(&pdev->dev);
	FUNC5(pdev, wm9713);

	return FUNC3(&pdev->dev,
			&soc_component_dev_wm9713, wm9713_dai, FUNC0(wm9713_dai));
}