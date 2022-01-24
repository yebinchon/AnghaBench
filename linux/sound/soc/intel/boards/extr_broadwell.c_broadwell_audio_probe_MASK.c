#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  platform; } ;
struct snd_soc_acpi_mach {TYPE_1__ mach_params; } ;
struct TYPE_8__ {struct snd_soc_acpi_mach* platform_data; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_7__ {TYPE_3__* dev; } ;

/* Variables and functions */
 TYPE_2__ broadwell_rt286 ; 
 int FUNC0 (TYPE_3__*,TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct snd_soc_acpi_mach *mach;
	int ret;

	broadwell_rt286.dev = &pdev->dev;

	/* override plaform name, if required */
	mach = (&pdev->dev)->platform_data;
	ret = FUNC1(&broadwell_rt286,
						    mach->mach_params.platform);
	if (ret)
		return ret;

	return FUNC0(&pdev->dev, &broadwell_rt286);
}