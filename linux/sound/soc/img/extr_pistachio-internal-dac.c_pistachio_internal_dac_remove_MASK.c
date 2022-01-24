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
struct pistachio_internal_dac {int /*<<< orphan*/  supply; } ;

/* Variables and functions */
 struct pistachio_internal_dac* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pistachio_internal_dac*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct pistachio_internal_dac *dac = FUNC0(&pdev->dev);

	FUNC2(&pdev->dev);
	FUNC1(dac);
	FUNC3(dac->supply);

	return 0;
}