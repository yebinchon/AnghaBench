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
struct samsung_i2s_priv {int /*<<< orphan*/  clk; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct samsung_i2s_priv* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct samsung_i2s_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct samsung_i2s_priv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct samsung_i2s_priv *priv = FUNC1(&pdev->dev);

	/* The secondary device has no driver data assigned */
	if (!priv)
		return 0;

	FUNC5(&pdev->dev);
	FUNC4(&pdev->dev);

	FUNC3(priv);
	FUNC2(priv);
	FUNC0(priv->clk);

	FUNC6(&pdev->dev);

	return 0;
}