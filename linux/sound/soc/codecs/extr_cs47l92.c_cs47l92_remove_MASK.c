#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  madera; int /*<<< orphan*/ * adsp; } ;
struct cs47l92 {TYPE_1__ core; } ;

/* Variables and functions */
 int /*<<< orphan*/  MADERA_IRQ_DSP_IRQ1 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cs47l92*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cs47l92* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct cs47l92 *cs47l92 = FUNC4(pdev);

	FUNC5(&pdev->dev);

	FUNC1(&cs47l92->core, 0);
	FUNC6(&cs47l92->core.adsp[0]);

	FUNC3(cs47l92->core.madera, MADERA_IRQ_DSP_IRQ1, 0);
	FUNC2(cs47l92->core.madera, MADERA_IRQ_DSP_IRQ1, cs47l92);

	FUNC0(&cs47l92->core);

	return 0;
}