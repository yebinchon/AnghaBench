#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
struct byt_max98090_private {int dummy; } ;
struct TYPE_4__ {struct device* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  acpi_byt_max98090_gpios ; 
 TYPE_1__ byt_max98090_card ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct byt_max98090_private* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct byt_max98090_private*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct byt_max98090_private *priv;
	int ret_val;

	priv = FUNC3(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv) {
		FUNC1(&pdev->dev, "allocation failed\n");
		return -ENOMEM;
	}

	ret_val = FUNC2(dev->parent, acpi_byt_max98090_gpios);
	if (ret_val)
		FUNC0(dev, "Unable to add GPIO mapping table\n");

	byt_max98090_card.dev = &pdev->dev;
	FUNC5(&byt_max98090_card, priv);
	ret_val = FUNC4(&pdev->dev, &byt_max98090_card);
	if (ret_val) {
		FUNC1(&pdev->dev,
			"snd_soc_register_card failed %d\n", ret_val);
		return ret_val;
	}

	return 0;
}