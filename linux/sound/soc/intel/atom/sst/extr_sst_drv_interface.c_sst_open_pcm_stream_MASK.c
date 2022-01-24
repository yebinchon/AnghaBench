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
struct snd_sst_params {int dummy; } ;
struct intel_sst_drv {int /*<<< orphan*/  dev; int /*<<< orphan*/  stream_cnt; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 struct intel_sst_drv* FUNC1 (struct device*) ; 
 int FUNC2 (struct intel_sst_drv*,struct snd_sst_params*) ; 

__attribute__((used)) static int FUNC3(struct device *dev,
		struct snd_sst_params *str_param)
{
	int retval;
	struct intel_sst_drv *ctx = FUNC1(dev);

	if (!str_param)
		return -EINVAL;

	retval = FUNC2(ctx, str_param);
	if (retval > 0)
		ctx->stream_cnt++;
	else
		FUNC0(ctx->dev, "sst_get_stream returned err %d\n", retval);

	return retval;
}