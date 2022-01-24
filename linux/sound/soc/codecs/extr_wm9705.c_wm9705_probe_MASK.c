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
struct wm9705_priv {int /*<<< orphan*/  mfd_pdata; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct wm9705_priv* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct wm9705_priv*) ; 
 int /*<<< orphan*/  soc_component_dev_wm9705 ; 
 int /*<<< orphan*/  wm9705_dai ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct wm9705_priv *wm9705;

	wm9705 = FUNC2(&pdev->dev, sizeof(*wm9705), GFP_KERNEL);
	if (wm9705 == NULL)
		return -ENOMEM;

	wm9705->mfd_pdata = FUNC1(&pdev->dev);
	FUNC4(pdev, wm9705);

	return FUNC3(&pdev->dev,
			&soc_component_dev_wm9705, wm9705_dai, FUNC0(wm9705_dai));
}