#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct wm8994_priv {int /*<<< orphan*/  wm8994; int /*<<< orphan*/  fw_lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct wm8994_priv* FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct wm8994_priv*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  soc_component_dev_wm8994 ; 
 int /*<<< orphan*/  wm8994_dai ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct wm8994_priv *wm8994;

	wm8994 = FUNC2(&pdev->dev, sizeof(struct wm8994_priv),
			      GFP_KERNEL);
	if (wm8994 == NULL)
		return -ENOMEM;
	FUNC5(pdev, wm8994);

	FUNC4(&wm8994->fw_lock);

	wm8994->wm8994 = FUNC1(pdev->dev.parent);

	FUNC6(&pdev->dev);
	FUNC7(&pdev->dev);

	return FUNC3(&pdev->dev, &soc_component_dev_wm8994,
			wm8994_dai, FUNC0(wm8994_dai));
}