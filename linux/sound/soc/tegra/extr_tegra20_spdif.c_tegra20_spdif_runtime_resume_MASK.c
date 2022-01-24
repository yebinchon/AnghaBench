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
struct tegra20_spdif {int /*<<< orphan*/  clk_spdif_out; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct tegra20_spdif* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct tegra20_spdif *spdif = FUNC2(dev);
	int ret;

	ret = FUNC0(spdif->clk_spdif_out);
	if (ret) {
		FUNC1(dev, "clk_enable failed: %d\n", ret);
		return ret;
	}

	return 0;
}