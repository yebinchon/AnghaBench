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
struct ep93xx_ac97_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97GCR ; 
 int /*<<< orphan*/ * ep93xx_ac97_info ; 
 int /*<<< orphan*/  FUNC0 (struct ep93xx_ac97_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ep93xx_ac97_info* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct ep93xx_ac97_info	*info = FUNC1(pdev);

	FUNC3(&pdev->dev);

	/* disable the AC97 controller */
	FUNC0(info, AC97GCR, 0);

	ep93xx_ac97_info = NULL;

	FUNC2(NULL);

	return 0;
}