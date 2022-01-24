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
struct TYPE_2__ {int /*<<< orphan*/  codec_mask; int /*<<< orphan*/  platform; } ;
struct snd_soc_acpi_mach {TYPE_1__ mach_params; int /*<<< orphan*/  drv_name; } ;
struct skl_dev {struct platform_device* i2s_dev; struct snd_soc_acpi_mach* mach; } ;
struct platform_device {int dummy; } ;
struct hdac_bus {int /*<<< orphan*/  dev; int /*<<< orphan*/  codec_mask; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct platform_device*) ; 
 int FUNC3 (struct platform_device*,void const*,int) ; 
 struct platform_device* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*) ; 
 struct hdac_bus* FUNC6 (struct skl_dev*) ; 

__attribute__((used)) static int FUNC7(struct skl_dev *skl)
{
	struct snd_soc_acpi_mach *mach = skl->mach;
	struct hdac_bus *bus = FUNC6(skl);
	struct platform_device *pdev;
	int ret;

	pdev = FUNC4(mach->drv_name, -1);
	if (pdev == NULL) {
		FUNC0(bus->dev, "platform device alloc failed\n");
		return -EIO;
	}

	mach->mach_params.platform = FUNC1(bus->dev);
	mach->mach_params.codec_mask = bus->codec_mask;

	ret = FUNC3(pdev, (const void *)mach, sizeof(*mach));
	if (ret) {
		FUNC0(bus->dev, "failed to add machine device platform data\n");
		FUNC5(pdev);
		return ret;
	}

	ret = FUNC2(pdev);
	if (ret) {
		FUNC0(bus->dev, "failed to add machine device\n");
		FUNC5(pdev);
		return -EIO;
	}


	skl->i2s_dev = pdev;

	return 0;
}