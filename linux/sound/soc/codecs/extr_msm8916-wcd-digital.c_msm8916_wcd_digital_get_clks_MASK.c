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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct msm8916_wcd_digital_priv {void* mclk; void* ahbclk; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 void* FUNC3 (struct device*,char*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev,
					struct msm8916_wcd_digital_priv	*priv)
{
	struct device *dev = &pdev->dev;

	priv->ahbclk = FUNC3(dev, "ahbix-clk");
	if (FUNC0(priv->ahbclk)) {
		FUNC2(dev, "failed to get ahbix clk\n");
		return FUNC1(priv->ahbclk);
	}

	priv->mclk = FUNC3(dev, "mclk");
	if (FUNC0(priv->mclk)) {
		FUNC2(dev, "failed to get mclk\n");
		return FUNC1(priv->mclk);
	}

	return 0;
}