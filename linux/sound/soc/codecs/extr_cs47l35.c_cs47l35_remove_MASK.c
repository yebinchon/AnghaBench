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
struct cs47l35 {TYPE_1__ core; } ;

/* Variables and functions */
 int CS47L35_NUM_ADSP ; 
 int /*<<< orphan*/  MADERA_IRQ_DSP_IRQ1 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cs47l35*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cs47l35* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct cs47l35 *cs47l35 = FUNC4(pdev);
	int i;

	FUNC5(&pdev->dev);

	for (i = 0; i < CS47L35_NUM_ADSP; i++)
		FUNC6(&cs47l35->core.adsp[i]);

	FUNC3(cs47l35->core.madera, MADERA_IRQ_DSP_IRQ1, 0);
	FUNC1(cs47l35->core.madera, MADERA_IRQ_DSP_IRQ1, cs47l35);
	FUNC2(&cs47l35->core);
	FUNC0(&cs47l35->core);

	return 0;
}