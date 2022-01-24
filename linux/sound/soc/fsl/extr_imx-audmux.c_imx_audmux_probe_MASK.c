#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_8__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; TYPE_1__* id_entry; } ;
struct of_device_id {TYPE_1__* data; } ;
struct TYPE_7__ {int driver_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  IMX21_AUDMUX 129 
#define  IMX31_AUDMUX 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * audmux_base ; 
 int /*<<< orphan*/ * audmux_clk ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int audmux_type ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  imx_audmux_dt_ids ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct of_device_id* FUNC9 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int reg_max ; 
 int /*<<< orphan*/  regcache ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	const struct of_device_id *of_id =
			FUNC9(imx_audmux_dt_ids, &pdev->dev);

	audmux_base = FUNC7(pdev, 0);
	if (FUNC0(audmux_base))
		return FUNC1(audmux_base);

	audmux_clk = FUNC5(&pdev->dev, "audmux");
	if (FUNC0(audmux_clk)) {
		FUNC3(&pdev->dev, "cannot get clock: %ld\n",
				FUNC1(audmux_clk));
		audmux_clk = NULL;
	}

	if (of_id)
		pdev->id_entry = of_id->data;
	audmux_type = pdev->id_entry->driver_data;

	switch (audmux_type) {
	case IMX31_AUDMUX:
		FUNC2();
		reg_max = 14;
		break;
	case IMX21_AUDMUX:
		reg_max = 6;
		break;
	default:
		FUNC4(&pdev->dev, "unsupported version!\n");
		return -EINVAL;
	}

	regcache = FUNC6(&pdev->dev, sizeof(u32) * reg_max, GFP_KERNEL);
	if (!regcache)
		return -ENOMEM;

	if (of_id)
		FUNC8(pdev, pdev->dev.of_node);

	return 0;
}