#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  platform; } ;
struct snd_soc_acpi_mach {TYPE_1__ mach_params; } ;
struct TYPE_11__ {struct snd_soc_acpi_mach* platform_data; } ;
struct platform_device {TYPE_4__ dev; } ;
struct bdw_rt5677_priv {int dummy; } ;
struct TYPE_10__ {TYPE_4__* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_2__ bdw_rt5677_card ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,char*) ; 
 struct bdw_rt5677_priv* FUNC1 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct bdw_rt5677_priv*) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct bdw_rt5677_priv *bdw_rt5677;
	struct snd_soc_acpi_mach *mach;
	int ret;

	bdw_rt5677_card.dev = &pdev->dev;

	/* Allocate driver private struct */
	bdw_rt5677 = FUNC1(&pdev->dev, sizeof(struct bdw_rt5677_priv),
		GFP_KERNEL);
	if (!bdw_rt5677) {
		FUNC0(&pdev->dev, "Can't allocate bdw_rt5677\n");
		return -ENOMEM;
	}

	/* override plaform name, if required */
	mach = (&pdev->dev)->platform_data;
	ret = FUNC4(&bdw_rt5677_card,
						    mach->mach_params.platform);
	if (ret)
		return ret;

	FUNC3(&bdw_rt5677_card, bdw_rt5677);

	return FUNC2(&pdev->dev, &bdw_rt5677_card);
}