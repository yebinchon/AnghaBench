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
struct wcd9335_codec {int reset_gpio; TYPE_1__* supplies; void* native_clk; void* mclk; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct TYPE_2__ {char* supply; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  WCD9335_MAX_SUPPLY ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 void* FUNC3 (struct device*,char*) ; 
 int FUNC4 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(struct wcd9335_codec *wcd)
{
	struct device *dev = wcd->dev;
	struct device_node *np = dev->of_node;
	int ret;

	wcd->reset_gpio = FUNC4(np,	"reset-gpios", 0);
	if (wcd->reset_gpio < 0) {
		FUNC2(dev, "Reset GPIO missing from DT\n");
		return wcd->reset_gpio;
	}

	wcd->mclk = FUNC3(dev, "mclk");
	if (FUNC0(wcd->mclk)) {
		FUNC2(dev, "mclk not found\n");
		return FUNC1(wcd->mclk);
	}

	wcd->native_clk = FUNC3(dev, "slimbus");
	if (FUNC0(wcd->native_clk)) {
		FUNC2(dev, "slimbus clock not found\n");
		return FUNC1(wcd->native_clk);
	}

	wcd->supplies[0].supply = "vdd-buck";
	wcd->supplies[1].supply = "vdd-buck-sido";
	wcd->supplies[2].supply = "vdd-tx";
	wcd->supplies[3].supply = "vdd-rx";
	wcd->supplies[4].supply = "vdd-io";

	ret = FUNC5(dev, WCD9335_MAX_SUPPLY, wcd->supplies);
	if (ret) {
		FUNC2(dev, "Failed to get supplies: err = %d\n", ret);
		return ret;
	}

	return 0;
}