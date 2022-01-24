#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  regmap_ahub; int /*<<< orphan*/  regmap_apbif; int /*<<< orphan*/  clk_d_audio; int /*<<< orphan*/  clk_apbif; } ;

/* Variables and functions */
 TYPE_1__* ahub ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	int ret;

	ret = FUNC1(ahub->clk_d_audio);
	if (ret) {
		FUNC2(dev, "clk_enable d_audio failed: %d\n", ret);
		return ret;
	}
	ret = FUNC1(ahub->clk_apbif);
	if (ret) {
		FUNC2(dev, "clk_enable apbif failed: %d\n", ret);
		FUNC0(ahub->clk_d_audio);
		return ret;
	}

	FUNC3(ahub->regmap_apbif, false);
	FUNC3(ahub->regmap_ahub, false);

	return 0;
}