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
struct rk_pdm_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  hclk; int /*<<< orphan*/  clk; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct rk_pdm_dev* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct rk_pdm_dev *pdm = FUNC2(dev);
	int ret;

	ret = FUNC0(pdm->clk);
	if (ret) {
		FUNC1(pdm->dev, "clock enable failed %d\n", ret);
		return ret;
	}

	ret = FUNC0(pdm->hclk);
	if (ret) {
		FUNC1(pdm->dev, "hclock enable failed %d\n", ret);
		return ret;
	}

	return 0;
}