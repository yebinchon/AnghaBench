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
struct lochnagar_sc_priv {int /*<<< orphan*/  mclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct lochnagar_sc_priv* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lochnagar_sc_dai ; 
 int /*<<< orphan*/  lochnagar_sc_driver ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct lochnagar_sc_priv*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct lochnagar_sc_priv *priv;
	int ret;

	priv = FUNC5(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->mclk = FUNC4(&pdev->dev, "mclk");
	if (FUNC1(priv->mclk)) {
		ret = FUNC2(priv->mclk);
		FUNC3(&pdev->dev, "Failed to get MCLK: %d\n", ret);
		return ret;
	}

	FUNC7(pdev, priv);

	return FUNC6(&pdev->dev,
					       &lochnagar_sc_driver,
					       lochnagar_sc_dai,
					       FUNC0(lochnagar_sc_dai));
}