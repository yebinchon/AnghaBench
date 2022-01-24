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
struct stream_info {int dummy; } ;
struct intel_sst_drv {int /*<<< orphan*/  dev; int /*<<< orphan*/ * streams; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 struct stream_info* FUNC1 (struct intel_sst_drv*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct intel_sst_drv*,unsigned int) ; 

int FUNC4(struct intel_sst_drv *ctx, unsigned int str_id)
{
	struct stream_info *stream;
	int ret = 0;

	stream = FUNC1(ctx, str_id);
	if (stream) {
		/* str_id is valid, so stream is alloacted */
		ret = FUNC3(ctx, str_id);
		if (ret)
			FUNC2(&ctx->streams[str_id]);
		return ret;
	} else {
		FUNC0(ctx->dev, "we tried to free stream context %d which was freed!!!\n", str_id);
	}
	return ret;
}