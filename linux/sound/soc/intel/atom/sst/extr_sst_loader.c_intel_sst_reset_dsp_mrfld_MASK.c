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
union config_status_reg_mrfld {int full; } ;
struct intel_sst_drv {int /*<<< orphan*/  dev; int /*<<< orphan*/  shim; } ;

/* Variables and functions */
 int /*<<< orphan*/  SST_CSR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct intel_sst_drv *sst_drv_ctx)
{
	union config_status_reg_mrfld csr;

	FUNC0(sst_drv_ctx->dev, "sst: Resetting the DSP in mrfld\n");
	csr.full = FUNC1(sst_drv_ctx->shim, SST_CSR);

	FUNC0(sst_drv_ctx->dev, "value:0x%llx\n", csr.full);

	csr.full |= 0x7;
	FUNC2(sst_drv_ctx->shim, SST_CSR, csr.full);
	csr.full = FUNC1(sst_drv_ctx->shim, SST_CSR);

	FUNC0(sst_drv_ctx->dev, "value:0x%llx\n", csr.full);

	csr.full &= ~(0x1);
	FUNC2(sst_drv_ctx->shim, SST_CSR, csr.full);

	csr.full = FUNC1(sst_drv_ctx->shim, SST_CSR);
	FUNC0(sst_drv_ctx->dev, "value:0x%llx\n", csr.full);
	return 0;
}