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
struct stream_info {int /*<<< orphan*/  drain_cb_param; int /*<<< orphan*/  drain_notify; int /*<<< orphan*/  compr_cb_param; int /*<<< orphan*/  compr_cb; } ;
struct sst_compress_cb {int /*<<< orphan*/  drain_cb_param; int /*<<< orphan*/  drain_notify; int /*<<< orphan*/  param; int /*<<< orphan*/  compr_cb; } ;
struct snd_sst_params {int dummy; } ;
struct intel_sst_drv {struct stream_info* streams; int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct intel_sst_drv* FUNC2 (struct device*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct intel_sst_drv*,struct snd_sst_params*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_sst_drv*) ; 

__attribute__((used)) static int FUNC7(struct device *dev,
		struct snd_sst_params *str_params, struct sst_compress_cb *cb)
{
	int str_id, retval;
	struct stream_info *stream;
	struct intel_sst_drv *ctx = FUNC2(dev);

	retval = FUNC3(ctx->dev);
	if (retval < 0) {
		FUNC4(ctx->dev);
		return retval;
	}

	str_id = FUNC5(ctx, str_params);
	if (str_id > 0) {
		FUNC0(dev, "stream allocated in sst_cdev_open %d\n", str_id);
		stream = &ctx->streams[str_id];
		stream->compr_cb = cb->compr_cb;
		stream->compr_cb_param = cb->param;
		stream->drain_notify = cb->drain_notify;
		stream->drain_cb_param = cb->drain_cb_param;
	} else {
		FUNC1(dev, "stream encountered error during alloc %d\n", str_id);
		str_id = -EINVAL;
		FUNC6(ctx);
	}
	return str_id;
}