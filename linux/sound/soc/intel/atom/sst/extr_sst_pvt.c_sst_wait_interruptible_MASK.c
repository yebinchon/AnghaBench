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
struct sst_block {scalar_t__ ret_code; int /*<<< orphan*/  condition; } ;
struct intel_sst_drv {int /*<<< orphan*/  dev; int /*<<< orphan*/  wait_queue; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct intel_sst_drv *sst_drv_ctx,
				struct sst_block *block)
{
	int retval = 0;

	if (!FUNC2(sst_drv_ctx->wait_queue,
				block->condition)) {
		/* event wake */
		if (block->ret_code < 0) {
			FUNC1(sst_drv_ctx->dev,
				"stream failed %d\n", block->ret_code);
			retval = -EBUSY;
		} else {
			FUNC0(sst_drv_ctx->dev, "event up\n");
			retval = 0;
		}
	} else {
		FUNC1(sst_drv_ctx->dev, "signal interrupted\n");
		retval = -EINTR;
	}
	return retval;

}