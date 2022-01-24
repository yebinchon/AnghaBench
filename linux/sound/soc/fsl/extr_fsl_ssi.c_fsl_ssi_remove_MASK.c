#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct fsl_ssi {int /*<<< orphan*/  ac97_reg_lock; TYPE_1__* soc; scalar_t__ card_pdev; int /*<<< orphan*/  dbg_stats; } ;
struct TYPE_2__ {scalar_t__ imx; } ;

/* Variables and functions */
 struct fsl_ssi* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fsl_ssi*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,struct fsl_ssi*) ; 
 scalar_t__ FUNC4 (struct fsl_ssi*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct fsl_ssi *ssi = FUNC0(&pdev->dev);

	FUNC1(&ssi->dbg_stats);

	if (ssi->card_pdev)
		FUNC6(ssi->card_pdev);

	/* Clean up SSI registers */
	FUNC2(ssi);

	if (ssi->soc->imx)
		FUNC3(pdev, ssi);

	if (FUNC4(ssi)) {
		FUNC7(NULL);
		FUNC5(&ssi->ac97_reg_lock);
	}

	return 0;
}