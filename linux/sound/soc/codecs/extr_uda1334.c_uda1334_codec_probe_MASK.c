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
struct uda1334_priv {void* deemph; void* mute; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct uda1334_priv* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct uda1334_priv*) ; 
 int /*<<< orphan*/  soc_component_dev_uda1334 ; 
 int /*<<< orphan*/  uda1334_dai ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct uda1334_priv *uda1334;
	int ret;

	uda1334 = FUNC4(&pdev->dev, sizeof(struct uda1334_priv),
			       GFP_KERNEL);
	if (!uda1334)
		return -ENOMEM;

	FUNC6(pdev, uda1334);

	uda1334->mute = FUNC3(&pdev->dev, "nxp,mute", GPIOD_OUT_LOW);
	if (FUNC0(uda1334->mute)) {
		ret = FUNC1(uda1334->mute);
		FUNC2(&pdev->dev, "Failed to get mute line: %d\n", ret);
		return ret;
	}

	uda1334->deemph = FUNC3(&pdev->dev, "nxp,deemph", GPIOD_OUT_LOW);
	if (FUNC0(uda1334->deemph)) {
		ret = FUNC1(uda1334->deemph);
		FUNC2(&pdev->dev, "Failed to get deemph line: %d\n", ret);
		return ret;
	}

	ret = FUNC5(&pdev->dev,
					      &soc_component_dev_uda1334,
					      &uda1334_dai, 1);
	if (ret < 0)
		FUNC2(&pdev->dev, "Failed to register component: %d\n", ret);

	return ret;
}