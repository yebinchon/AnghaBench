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
struct stream_info {int /*<<< orphan*/ * period_elapsed; int /*<<< orphan*/  status; int /*<<< orphan*/ * pcm_substream; } ;
struct intel_sst_drv {int /*<<< orphan*/  dev; int /*<<< orphan*/  stream_cnt; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  STREAM_UN_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct intel_sst_drv* FUNC2 (struct device*) ; 
 int FUNC3 (struct intel_sst_drv*,unsigned int) ; 
 struct stream_info* FUNC4 (struct intel_sst_drv*,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct device *dev, unsigned int str_id)
{
	struct stream_info *stream;
	int retval = 0;
	struct intel_sst_drv *ctx = FUNC2(dev);

	stream = FUNC4(ctx, str_id);
	if (!stream) {
		FUNC1(ctx->dev, "stream info is NULL for str %d!!!\n", str_id);
		return -EINVAL;
	}

	retval = FUNC3(ctx, str_id);
	stream->pcm_substream = NULL;
	stream->status = STREAM_UN_INIT;
	stream->period_elapsed = NULL;
	ctx->stream_cnt--;

	if (retval)
		FUNC1(ctx->dev, "free stream returned err %d\n", retval);

	FUNC0(ctx->dev, "Exit\n");
	return 0;
}