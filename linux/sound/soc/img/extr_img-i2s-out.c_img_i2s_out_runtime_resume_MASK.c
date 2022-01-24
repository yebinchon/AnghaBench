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
struct img_i2s_out {int /*<<< orphan*/  clk_sys; int /*<<< orphan*/  clk_ref; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct img_i2s_out* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct img_i2s_out *i2s = FUNC3(dev);
	int ret;

	ret = FUNC1(i2s->clk_sys);
	if (ret) {
		FUNC2(dev, "clk_enable failed: %d\n", ret);
		return ret;
	}

	ret = FUNC1(i2s->clk_ref);
	if (ret) {
		FUNC2(dev, "clk_enable failed: %d\n", ret);
		FUNC0(i2s->clk_sys);
		return ret;
	}

	return 0;
}