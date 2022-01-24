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
struct TYPE_4__ {int /*<<< orphan*/  madera; int /*<<< orphan*/ * adsp; } ;
struct cs47l15 {TYPE_1__ core; } ;

/* Variables and functions */
 int /*<<< orphan*/  MADERA_IRQ_DSP_IRQ1 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cs47l15*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cs47l15* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct cs47l15 *cs47l15 = FUNC5(pdev);

	FUNC6(&pdev->dev);

	FUNC1(&cs47l15->core, 0);

	FUNC7(&cs47l15->core.adsp[0]);

	FUNC4(cs47l15->core.madera, MADERA_IRQ_DSP_IRQ1, 0);
	FUNC2(cs47l15->core.madera, MADERA_IRQ_DSP_IRQ1, cs47l15);
	FUNC3(&cs47l15->core);
	FUNC0(&cs47l15->core);

	return 0;
}