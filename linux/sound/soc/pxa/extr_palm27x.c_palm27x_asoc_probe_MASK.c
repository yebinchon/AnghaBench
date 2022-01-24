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
struct TYPE_8__ {scalar_t__ platform_data; } ;
struct platform_device {TYPE_3__ dev; } ;
struct palm27x_asoc_info {int /*<<< orphan*/  jack_gpio; } ;
struct TYPE_7__ {int /*<<< orphan*/  gpio; } ;
struct TYPE_6__ {TYPE_3__* dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*,...) ; 
 int FUNC1 (TYPE_3__*,TYPE_1__*) ; 
 TYPE_2__* hs_jack_gpios ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 TYPE_1__ palm27x_asoc ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	int ret;

	if (!(FUNC5() || FUNC3() ||
		FUNC2() || FUNC4()))
		return -ENODEV;

	if (!pdev->dev.platform_data) {
		FUNC0(&pdev->dev, "please supply platform_data\n");
		return -ENODEV;
	}

	hs_jack_gpios[0].gpio = ((struct palm27x_asoc_info *)
			(pdev->dev.platform_data))->jack_gpio;

	palm27x_asoc.dev = &pdev->dev;

	ret = FUNC1(&pdev->dev, &palm27x_asoc);
	if (ret)
		FUNC0(&pdev->dev, "snd_soc_register_card() failed: %d\n",
			ret);
	return ret;
}