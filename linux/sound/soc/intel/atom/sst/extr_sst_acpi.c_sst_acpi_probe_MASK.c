#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sst_platform_info {int platform; TYPE_3__* res_info; } ;
struct TYPE_5__ {int /*<<< orphan*/  acpi_ipc_irq_index; } ;
struct snd_soc_acpi_mach {int drv_name; int /*<<< orphan*/  fw_filename; TYPE_2__ mach_params; struct sst_platform_info* pdata; } ;
struct device {TYPE_1__* driver; } ;
struct platform_device {struct device dev; } ;
struct intel_sst_drv {int /*<<< orphan*/  firmware_name; struct sst_platform_info* pdata; } ;
struct acpi_device_id {unsigned int id; scalar_t__ driver_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  acpi_ipc_irq_index; } ;
struct TYPE_4__ {int /*<<< orphan*/  acpi_match_table; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct platform_device*) ; 
 int FUNC1 (struct platform_device*) ; 
 struct acpi_device_id* FUNC2 (int /*<<< orphan*/ ,struct device*) ; 
 struct sst_platform_info byt_rvp_platform_data ; 
 TYPE_3__ bytcr_res_info ; 
 struct sst_platform_info chv_platform_data ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 int FUNC5 (unsigned int,int,unsigned int*) ; 
 struct platform_device* FUNC6 (struct device*,int,int,void const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct intel_sst_drv*) ; 
 struct snd_soc_acpi_mach* FUNC8 (struct snd_soc_acpi_mach*) ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ FUNC10 (struct platform_device*) ; 
 int FUNC11 (struct intel_sst_drv**,struct device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct intel_sst_drv*) ; 
 int FUNC13 (struct intel_sst_drv*) ; 
 int FUNC14 (struct intel_sst_drv*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	int ret = 0;
	struct intel_sst_drv *ctx;
	const struct acpi_device_id *id;
	struct snd_soc_acpi_mach *mach;
	struct platform_device *mdev;
	struct platform_device *plat_dev;
	struct sst_platform_info *pdata;
	unsigned int dev_id;

	id = FUNC2(dev->driver->acpi_match_table, dev);
	if (!id)
		return -ENODEV;
	FUNC3(dev, "for %s\n", id->id);

	mach = (struct snd_soc_acpi_mach *)id->driver_data;
	mach = FUNC8(mach);
	if (mach == NULL) {
		FUNC4(dev, "No matching machine driver found\n");
		return -ENODEV;
	}

	if (FUNC9())
		mach->pdata = &byt_rvp_platform_data;
	else
		mach->pdata = &chv_platform_data;
	pdata = mach->pdata;

	ret = FUNC5(id->id, 16, &dev_id);
	if (ret < 0) {
		FUNC4(dev, "Unique device id conversion error: %d\n", ret);
		return ret;
	}

	FUNC3(dev, "ACPI device id: %x\n", dev_id);

	ret = FUNC11(&ctx, dev, dev_id);
	if (ret < 0)
		return ret;

	if (FUNC10(pdev)) {
		/* override resource info */
		byt_rvp_platform_data.res_info = &bytcr_res_info;
	}

	/* update machine parameters */
	mach->mach_params.acpi_ipc_irq_index =
		pdata->res_info->acpi_ipc_irq_index;

	plat_dev = FUNC6(dev, pdata->platform, -1,
						NULL, 0);
	if (FUNC0(plat_dev)) {
		FUNC4(dev, "Failed to create machine device: %s\n",
			pdata->platform);
		return FUNC1(plat_dev);
	}

	/*
	 * Create platform device for sst machine driver,
	 * pass machine info as pdata
	 */
	mdev = FUNC6(dev, mach->drv_name, -1,
					(const void *)mach, sizeof(*mach));
	if (FUNC0(mdev)) {
		FUNC4(dev, "Failed to create machine device: %s\n",
			mach->drv_name);
		return FUNC1(mdev);
	}

	/* Fill sst platform data */
	ctx->pdata = pdata;
	FUNC15(ctx->firmware_name, mach->fw_filename);

	ret = FUNC14(ctx);
	if (ret)
		return ret;

	ret = FUNC13(ctx);
	if (ret < 0)
		return ret;

	FUNC12(ctx);
	FUNC7(pdev, ctx);
	return ret;
}