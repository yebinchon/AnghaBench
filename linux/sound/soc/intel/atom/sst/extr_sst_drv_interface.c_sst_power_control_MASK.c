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
struct intel_sst_drv {scalar_t__ sst_state; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct device*) ; 
 scalar_t__ SST_RESET ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct intel_sst_drv* FUNC3 (struct device*) ; 
 int FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int FUNC6 (struct intel_sst_drv*) ; 
 int FUNC7 (struct intel_sst_drv*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_sst_drv*,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct device *dev, bool state)
{
	struct intel_sst_drv *ctx = FUNC3(dev);
	int ret = 0;
	int usage_count = 0;

	if (state) {
		ret = FUNC4(dev);
		usage_count = FUNC0(dev);
		FUNC1(ctx->dev, "Enable: pm usage count: %d\n", usage_count);
		if (ret < 0) {
			FUNC5(dev);
			FUNC2(ctx->dev, "Runtime get failed with err: %d\n", ret);
			return ret;
		}
		if ((ctx->sst_state == SST_RESET) && (usage_count == 1)) {
			ret = FUNC6(ctx);
			if (ret) {
				FUNC2(dev, "FW download fail %d\n", ret);
				FUNC8(ctx, SST_RESET);
				ret = FUNC7(ctx);
			}
		}
	} else {
		usage_count = FUNC0(dev);
		FUNC1(ctx->dev, "Disable: pm usage count: %d\n", usage_count);
		return FUNC7(ctx);
	}
	return ret;
}