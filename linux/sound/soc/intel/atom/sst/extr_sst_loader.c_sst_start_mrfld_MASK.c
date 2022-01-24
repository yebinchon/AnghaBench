#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int xt_snoop; } ;
union config_status_reg_mrfld {int full; TYPE_1__ part; } ;
struct intel_sst_drv {int /*<<< orphan*/  dev; int /*<<< orphan*/  shim; } ;

/* Variables and functions */
 int /*<<< orphan*/  SST_CSR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct intel_sst_drv *sst_drv_ctx)
{
	union config_status_reg_mrfld csr;

	FUNC0(sst_drv_ctx->dev, "sst: Starting the DSP in mrfld LALALALA\n");
	csr.full = FUNC1(sst_drv_ctx->shim, SST_CSR);
	FUNC0(sst_drv_ctx->dev, "value:0x%llx\n", csr.full);

	csr.full |= 0x7;
	FUNC2(sst_drv_ctx->shim, SST_CSR, csr.full);

	csr.full = FUNC1(sst_drv_ctx->shim, SST_CSR);
	FUNC0(sst_drv_ctx->dev, "value:0x%llx\n", csr.full);

	csr.part.xt_snoop = 1;
	csr.full &= ~(0x5);
	FUNC2(sst_drv_ctx->shim, SST_CSR, csr.full);

	csr.full = FUNC1(sst_drv_ctx->shim, SST_CSR);
	FUNC0(sst_drv_ctx->dev, "sst: Starting the DSP_merrifield:%llx\n",
			csr.full);
	return 0;
}