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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 TYPE_1__ bytcht_nocodec_card ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	int ret_val = 0;

	/* register the soc card */
	bytcht_nocodec_card.dev = &pdev->dev;

	ret_val = FUNC1(&pdev->dev, &bytcht_nocodec_card);

	if (ret_val) {
		FUNC0(&pdev->dev, "devm_snd_soc_register_card failed %d\n",
			ret_val);
		return ret_val;
	}
	FUNC2(pdev, &bytcht_nocodec_card);
	return ret_val;
}