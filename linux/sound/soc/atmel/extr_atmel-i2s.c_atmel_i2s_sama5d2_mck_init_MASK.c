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
struct device_node {int dummy; } ;
struct clk {int dummy; } ;
struct atmel_i2s_dev {int /*<<< orphan*/  gclk; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int FUNC2 (struct clk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 struct clk* FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct atmel_i2s_dev *dev,
				      struct device_node *np)
{
	struct clk *muxclk;
	int err;

	if (!dev->gclk)
		return 0;

	/* muxclk is optional, so we return error for probe defer only */
	muxclk = FUNC4(dev->dev, "muxclk");
	if (FUNC0(muxclk)) {
		err = FUNC1(muxclk);
		if (err == -EPROBE_DEFER)
			return -EPROBE_DEFER;
		FUNC3(dev->dev,
			 "failed to get the I2S clock control: %d\n", err);
		return 0;
	}

	return FUNC2(muxclk, dev->gclk);
}