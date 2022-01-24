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
struct img_prl_out {int /*<<< orphan*/  clk_ref; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct img_prl_out* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct img_prl_out *prl = FUNC2(dev);
	int ret;

	ret = FUNC0(prl->clk_ref);
	if (ret) {
		FUNC1(dev, "clk_enable failed: %d\n", ret);
		return ret;
	}

	return 0;
}