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
struct ep93xx_i2s_info {int /*<<< orphan*/  mclk; int /*<<< orphan*/  sclk; int /*<<< orphan*/  lrclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ep93xx_i2s_info* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct ep93xx_i2s_info *info = FUNC1(&pdev->dev);

	FUNC0(info->lrclk);
	FUNC0(info->sclk);
	FUNC0(info->mclk);
	return 0;
}