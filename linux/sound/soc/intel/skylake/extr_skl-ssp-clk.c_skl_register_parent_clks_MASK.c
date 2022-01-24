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
struct skl_clk_parent_src {int /*<<< orphan*/  name; int /*<<< orphan*/  rate; int /*<<< orphan*/  parent_name; } ;
struct skl_clk_parent {int /*<<< orphan*/  hw; int /*<<< orphan*/  lookup; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int SKL_MAX_CLK_SRC ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct skl_clk_parent*,int) ; 

__attribute__((used)) static int FUNC6(struct device *dev,
			struct skl_clk_parent *parent,
			struct skl_clk_parent_src *pclk)
{
	int i, ret;

	for (i = 0; i < SKL_MAX_CLK_SRC; i++) {

		/* Register Parent clock */
		parent[i].hw = FUNC2(dev, pclk[i].name,
				pclk[i].parent_name, 0, pclk[i].rate);
		if (FUNC0(parent[i].hw)) {
			ret = FUNC1(parent[i].hw);
			goto err;
		}

		parent[i].lookup = FUNC4(parent[i].hw, pclk[i].name,
									NULL);
		if (!parent[i].lookup) {
			FUNC3(parent[i].hw);
			ret = -ENOMEM;
			goto err;
		}
	}

	return 0;
err:
	FUNC5(parent, i);
	return ret;
}