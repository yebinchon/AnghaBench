#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char* platform; } ;
struct snd_soc_acpi_mach {TYPE_1__ mach_params; } ;
struct TYPE_12__ {struct snd_soc_acpi_mach* platform_data; } ;
struct platform_device {TYPE_6__ dev; } ;
struct cht_mc_private {int dummy; } ;
struct TYPE_11__ {TYPE_6__* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,char*,int) ; 
 struct cht_mc_private* FUNC1 (TYPE_6__*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_6__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,TYPE_2__*) ; 
 TYPE_2__ snd_soc_card_cht ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct cht_mc_private*) ; 
 int FUNC5 (TYPE_2__*,char const*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct cht_mc_private *drv;
	struct snd_soc_acpi_mach *mach;
	const char *platform_name;
	int ret_val;

	drv = FUNC1(&pdev->dev, sizeof(*drv), GFP_KERNEL);
	if (!drv)
		return -ENOMEM;
	FUNC4(&snd_soc_card_cht, drv);

	/* override plaform name, if required */
	snd_soc_card_cht.dev = &pdev->dev;
	mach = (&pdev->dev)->platform_data;
	platform_name = mach->mach_params.platform;

	ret_val = FUNC5(&snd_soc_card_cht,
							platform_name);
	if (ret_val)
		return ret_val;

	/* register the soc card */
	ret_val = FUNC2(&pdev->dev, &snd_soc_card_cht);
	if (ret_val) {
		FUNC0(&pdev->dev,
			"snd_soc_register_card failed %d\n", ret_val);
		return ret_val;
	}
	FUNC3(pdev, &snd_soc_card_cht);

	return ret_val;
}