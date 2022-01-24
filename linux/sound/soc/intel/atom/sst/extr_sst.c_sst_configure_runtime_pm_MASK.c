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
struct intel_sst_drv {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SST_SUSPEND_DELAY ; 
 scalar_t__ acpi_disabled ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct intel_sst_drv *ctx)
{
	FUNC3(ctx->dev, SST_SUSPEND_DELAY);
	FUNC4(ctx->dev);
	/*
	 * For acpi devices, the actual physical device state is
	 * initially active. So change the state to active before
	 * enabling the pm
	 */

	if (!acpi_disabled)
		FUNC2(ctx->dev);

	FUNC0(ctx->dev);

	if (acpi_disabled)
		FUNC2(ctx->dev);
	else
		FUNC1(ctx->dev);
}