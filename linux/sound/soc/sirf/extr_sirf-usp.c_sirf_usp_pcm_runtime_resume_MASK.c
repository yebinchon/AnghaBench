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
struct sirf_usp {int /*<<< orphan*/  clk; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct sirf_usp* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct sirf_usp*) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct sirf_usp *usp = FUNC2(dev);
	int ret;

	ret = FUNC0(usp->clk);
	if (ret) {
		FUNC1(dev, "clk_enable failed: %d\n", ret);
		return ret;
	}
	FUNC3(usp);
	return 0;
}