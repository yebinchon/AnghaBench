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
struct rk_i2s_dev {int /*<<< orphan*/  mclk; int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct rk_i2s_dev* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	struct rk_i2s_dev *i2s = FUNC3(dev);
	int ret;

	ret = FUNC1(i2s->mclk);
	if (ret) {
		FUNC2(i2s->dev, "clock enable failed %d\n", ret);
		return ret;
	}

	FUNC4(i2s->regmap, false);
	FUNC5(i2s->regmap);

	ret = FUNC6(i2s->regmap);
	if (ret)
		FUNC0(i2s->mclk);

	return ret;
}