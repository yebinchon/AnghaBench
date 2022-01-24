#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sst_platform_info {int dummy; } ;
struct pci_device_id {int dummy; } ;
struct TYPE_3__ {struct sst_platform_info* platform_data; } ;
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  device; TYPE_1__ dev; } ;
struct intel_sst_drv {char* dev_id; int /*<<< orphan*/  dev; int /*<<< orphan*/  pci; int /*<<< orphan*/  firmware_name; int /*<<< orphan*/  irq_num; struct sst_platform_info* pdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,struct intel_sst_drv*) ; 
 int FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,char*,char*,char*) ; 
 int FUNC6 (struct intel_sst_drv**,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_sst_drv*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_sst_drv*) ; 
 int FUNC9 (struct intel_sst_drv*) ; 
 int FUNC10 (struct intel_sst_drv*) ; 

__attribute__((used)) static int FUNC11(struct pci_dev *pci,
			const struct pci_device_id *pci_id)
{
	int ret = 0;
	struct intel_sst_drv *sst_drv_ctx;
	struct sst_platform_info *sst_pdata = pci->dev.platform_data;

	FUNC0(&pci->dev, "Probe for DID %x\n", pci->device);
	ret = FUNC6(&sst_drv_ctx, &pci->dev, pci->device);
	if (ret < 0)
		return ret;

	sst_drv_ctx->pdata = sst_pdata;
	sst_drv_ctx->irq_num = pci->irq;
	FUNC5(sst_drv_ctx->firmware_name, sizeof(sst_drv_ctx->firmware_name),
			"%s%04x%s", "fw_sst_",
			sst_drv_ctx->dev_id, ".bin");

	ret = FUNC9(sst_drv_ctx);
	if (ret < 0)
		return ret;

	/* Init the device */
	ret = FUNC4(pci);
	if (ret) {
		FUNC1(sst_drv_ctx->dev,
			"device can't be enabled. Returned err: %d\n", ret);
		goto do_free_drv_ctx;
	}
	sst_drv_ctx->pci = FUNC2(pci);
	ret = FUNC10(sst_drv_ctx);
	if (ret < 0)
		goto do_free_drv_ctx;

	FUNC3(pci, sst_drv_ctx);
	FUNC7(sst_drv_ctx);

	return ret;

do_free_drv_ctx:
	FUNC8(sst_drv_ctx);
	FUNC1(sst_drv_ctx->dev, "Probe failed with %d\n", ret);
	return ret;
}