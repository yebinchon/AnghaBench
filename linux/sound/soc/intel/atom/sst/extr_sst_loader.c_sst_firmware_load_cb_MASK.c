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
struct intel_sst_drv {scalar_t__ sst_state; int /*<<< orphan*/  sst_lock; int /*<<< orphan*/  dev; int /*<<< orphan*/ * fw_in_mem; } ;
struct firmware {int dummy; } ;

/* Variables and functions */
 scalar_t__ SST_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct firmware const*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_sst_drv*,struct firmware const*) ; 

void FUNC6(const struct firmware *fw, void *context)
{
	struct intel_sst_drv *ctx = context;

	FUNC0(ctx->dev, "Enter\n");

	if (fw == NULL) {
		FUNC1(ctx->dev, "request fw failed\n");
		return;
	}

	FUNC2(&ctx->sst_lock);

	if (ctx->sst_state != SST_RESET ||
			ctx->fw_in_mem != NULL) {
		FUNC4(fw);
		FUNC3(&ctx->sst_lock);
		return;
	}

	FUNC0(ctx->dev, "Request Fw completed\n");
	FUNC5(ctx, fw);
	FUNC3(&ctx->sst_lock);
}