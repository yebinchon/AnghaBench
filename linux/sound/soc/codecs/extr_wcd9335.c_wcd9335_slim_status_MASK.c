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
struct wcd9335_codec {void* if_regmap; struct slim_device* slim_ifc_dev; void* regmap; struct slim_device* slim; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct slim_device {int /*<<< orphan*/  ctrl; struct device dev; } ;
struct device_node {int dummy; } ;
typedef  enum slim_device_status { ____Placeholder_slim_device_status } slim_device_status ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct wcd9335_codec* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 struct device_node* FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct slim_device* FUNC6 (int /*<<< orphan*/ ,struct device_node*) ; 
 void* FUNC7 (struct slim_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct slim_device*) ; 
 int FUNC9 (struct wcd9335_codec*) ; 
 int /*<<< orphan*/  wcd9335_ifc_regmap_config ; 
 int FUNC10 (struct wcd9335_codec*) ; 
 int /*<<< orphan*/  FUNC11 (struct wcd9335_codec*) ; 
 int /*<<< orphan*/  wcd9335_regmap_config ; 

__attribute__((used)) static int FUNC12(struct slim_device *sdev,
			       enum slim_device_status status)
{
	struct device *dev = &sdev->dev;
	struct device_node *ifc_dev_np;
	struct wcd9335_codec *wcd;
	int ret;

	wcd = FUNC3(dev);

	ifc_dev_np = FUNC5(dev->of_node, "slim-ifc-dev", 0);
	if (!ifc_dev_np) {
		FUNC2(dev, "No Interface device found\n");
		return -EINVAL;
	}

	wcd->slim = sdev;
	wcd->slim_ifc_dev = FUNC6(sdev->ctrl, ifc_dev_np);
	FUNC4(ifc_dev_np);
	if (!wcd->slim_ifc_dev) {
		FUNC2(dev, "Unable to get SLIM Interface device\n");
		return -EINVAL;
	}

	FUNC8(wcd->slim_ifc_dev);

	wcd->regmap = FUNC7(sdev, &wcd9335_regmap_config);
	if (FUNC0(wcd->regmap)) {
		FUNC2(dev, "Failed to allocate slim register map\n");
		return FUNC1(wcd->regmap);
	}

	wcd->if_regmap = FUNC7(wcd->slim_ifc_dev,
						  &wcd9335_ifc_regmap_config);
	if (FUNC0(wcd->if_regmap)) {
		FUNC2(dev, "Failed to allocate ifc register map\n");
		return FUNC1(wcd->if_regmap);
	}

	ret = FUNC9(wcd);
	if (ret) {
		FUNC2(dev, "Failed to bringup WCD9335\n");
		return ret;
	}

	ret = FUNC10(wcd);
	if (ret)
		return ret;

	FUNC11(wcd);

	return ret;
}