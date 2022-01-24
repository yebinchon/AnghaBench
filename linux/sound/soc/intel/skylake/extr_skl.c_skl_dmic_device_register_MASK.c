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
struct skl_dev {struct platform_device* dmic_dev; } ;
struct platform_device {int dummy; } ;
struct hdac_bus {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (struct platform_device*) ; 
 struct platform_device* FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*) ; 
 struct hdac_bus* FUNC4 (struct skl_dev*) ; 

__attribute__((used)) static int FUNC5(struct skl_dev *skl)
{
	struct hdac_bus *bus = FUNC4(skl);
	struct platform_device *pdev;
	int ret;

	/* SKL has one dmic port, so allocate dmic device for this */
	pdev = FUNC2("dmic-codec", -1);
	if (!pdev) {
		FUNC0(bus->dev, "failed to allocate dmic device\n");
		return -ENOMEM;
	}

	ret = FUNC1(pdev);
	if (ret) {
		FUNC0(bus->dev, "failed to add dmic device: %d\n", ret);
		FUNC3(pdev);
		return ret;
	}
	skl->dmic_dev = pdev;

	return 0;
}