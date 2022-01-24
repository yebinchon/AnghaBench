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
struct sun8i_codec {int /*<<< orphan*/  clk_module; int /*<<< orphan*/  clk_bus; int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct sun8i_codec* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct sun8i_codec *scodec = FUNC3(dev);
	int ret;

	ret = FUNC1(scodec->clk_module);
	if (ret) {
		FUNC2(dev, "Failed to enable the module clock\n");
		return ret;
	}

	ret = FUNC1(scodec->clk_bus);
	if (ret) {
		FUNC2(dev, "Failed to enable the bus clock\n");
		goto err_disable_modclk;
	}

	FUNC4(scodec->regmap, false);

	ret = FUNC5(scodec->regmap);
	if (ret) {
		FUNC2(dev, "Failed to sync regmap cache\n");
		goto err_disable_clk;
	}

	return 0;

err_disable_clk:
	FUNC0(scodec->clk_bus);

err_disable_modclk:
	FUNC0(scodec->clk_module);

	return ret;
}