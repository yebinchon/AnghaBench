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
struct snd_sst_bytes_v2 {int dummy; } ;
struct intel_sst_drv {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct intel_sst_drv* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_sst_drv*) ; 
 int FUNC4 (struct intel_sst_drv*,struct snd_sst_bytes_v2*) ; 

__attribute__((used)) static int FUNC5(struct device *dev,
		struct snd_sst_bytes_v2 *bytes)
{
	int ret_val = 0;
	struct intel_sst_drv *ctx = FUNC0(dev);

	if (NULL == bytes)
		return -EINVAL;
	ret_val = FUNC1(ctx->dev);
	if (ret_val < 0) {
		FUNC2(ctx->dev);
		return ret_val;
	}

	ret_val = FUNC4(ctx, bytes);
	FUNC3(ctx);

	return ret_val;
}