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
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hac_ac97_ops ; 
 int /*<<< orphan*/  sh4_hac_component ; 
 int /*<<< orphan*/  sh4_hac_dai ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	int ret;

	ret = FUNC2(&hac_ac97_ops);
	if (ret != 0)
		return ret;

	return FUNC1(&pdev->dev, &sh4_hac_component,
					  sh4_hac_dai, FUNC0(sh4_hac_dai));
}