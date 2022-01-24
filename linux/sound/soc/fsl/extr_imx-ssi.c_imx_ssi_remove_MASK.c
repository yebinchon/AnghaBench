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
struct imx_ssi {int flags; int /*<<< orphan*/  clk; int /*<<< orphan*/  fiq_init; } ;

/* Variables and functions */
 int IMX_SSI_USE_AC97 ; 
 int /*<<< orphan*/ * ac97_ssi ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*) ; 
 struct imx_ssi* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct imx_ssi *ssi = FUNC2(pdev);

	if (!ssi->fiq_init)
		FUNC1(pdev);

	FUNC4(&pdev->dev);

	if (ssi->flags & IMX_SSI_USE_AC97)
		ac97_ssi = NULL;

	FUNC0(ssi->clk);
	FUNC3(NULL);

	return 0;
}