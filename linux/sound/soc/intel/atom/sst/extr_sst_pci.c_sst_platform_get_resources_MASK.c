#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct intel_sst_drv {scalar_t__ dev_id; int /*<<< orphan*/ * dram; int /*<<< orphan*/  dev; void* dram_base; void* dram_end; int /*<<< orphan*/ * iram; void* iram_base; void* iram_end; int /*<<< orphan*/ * mailbox; void* mailbox_add; int /*<<< orphan*/ * shim; void* shim_phy_add; int /*<<< orphan*/ * ddr; void* ddr_end; TYPE_2__* pdata; void* ddr_base; struct pci_dev* pci; } ;
struct TYPE_4__ {TYPE_1__* lib_info; } ;
struct TYPE_3__ {int mod_base; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SST_DRV_NAME ; 
 scalar_t__ SST_MRFLD_PCI_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int FUNC3 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int) ; 
 void* FUNC6 (struct pci_dev*,int) ; 
 void* FUNC7 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (void*) ; 

__attribute__((used)) static int FUNC9(struct intel_sst_drv *ctx)
{
	int ddr_base, ret = 0;
	struct pci_dev *pci = ctx->pci;

	ret = FUNC3(pci, SST_DRV_NAME);
	if (ret)
		return ret;

	/* map registers */
	/* DDR base */
	if (ctx->dev_id == SST_MRFLD_PCI_ID) {
		ctx->ddr_base = FUNC6(pci, 0);
		/* check that the relocated IMR base matches with FW Binary */
		ddr_base = FUNC8(ctx->ddr_base);
		if (!ctx->pdata->lib_info) {
			FUNC1(ctx->dev, "lib_info pointer NULL\n");
			ret = -EINVAL;
			goto do_release_regions;
		}
		if (ddr_base != ctx->pdata->lib_info->mod_base) {
			FUNC1(ctx->dev,
					"FW LSP DDR BASE does not match with IFWI\n");
			ret = -EINVAL;
			goto do_release_regions;
		}
		ctx->ddr_end = FUNC4(pci, 0);

		ctx->ddr = FUNC7(pci, 0,
					FUNC5(pci, 0));
		if (!ctx->ddr) {
			ret = -EINVAL;
			goto do_release_regions;
		}
		FUNC0(ctx->dev, "sst: DDR Ptr %p\n", ctx->ddr);
	} else {
		ctx->ddr = NULL;
	}
	/* SHIM */
	ctx->shim_phy_add = FUNC6(pci, 1);
	ctx->shim = FUNC7(pci, 1, FUNC5(pci, 1));
	if (!ctx->shim) {
		ret = -EINVAL;
		goto do_release_regions;
	}
	FUNC0(ctx->dev, "SST Shim Ptr %p\n", ctx->shim);

	/* Shared SRAM */
	ctx->mailbox_add = FUNC6(pci, 2);
	ctx->mailbox = FUNC7(pci, 2, FUNC5(pci, 2));
	if (!ctx->mailbox) {
		ret = -EINVAL;
		goto do_release_regions;
	}
	FUNC0(ctx->dev, "SRAM Ptr %p\n", ctx->mailbox);

	/* IRAM */
	ctx->iram_end = FUNC4(pci, 3);
	ctx->iram_base = FUNC6(pci, 3);
	ctx->iram = FUNC7(pci, 3, FUNC5(pci, 3));
	if (!ctx->iram) {
		ret = -EINVAL;
		goto do_release_regions;
	}
	FUNC0(ctx->dev, "IRAM Ptr %p\n", ctx->iram);

	/* DRAM */
	ctx->dram_end = FUNC4(pci, 4);
	ctx->dram_base = FUNC6(pci, 4);
	ctx->dram = FUNC7(pci, 4, FUNC5(pci, 4));
	if (!ctx->dram) {
		ret = -EINVAL;
		goto do_release_regions;
	}
	FUNC0(ctx->dev, "DRAM Ptr %p\n", ctx->dram);
do_release_regions:
	FUNC2(pci);
	return 0;
}