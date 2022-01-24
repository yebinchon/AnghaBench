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
struct snd_soc_card {int dummy; } ;
struct mop500_ab8500_drvdata {int /*<<< orphan*/ * clk_ptr_intclk; int /*<<< orphan*/ * clk_ptr_ulpclk; int /*<<< orphan*/ * clk_ptr_sysclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct mop500_ab8500_drvdata* FUNC1 (struct snd_soc_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_card*,struct mop500_ab8500_drvdata*) ; 

void FUNC3(struct snd_soc_card *card)
{
	struct mop500_ab8500_drvdata *drvdata = FUNC1(card);

	if (drvdata->clk_ptr_sysclk != NULL)
		FUNC0(drvdata->clk_ptr_sysclk);
	if (drvdata->clk_ptr_ulpclk != NULL)
		FUNC0(drvdata->clk_ptr_ulpclk);
	if (drvdata->clk_ptr_intclk != NULL)
		FUNC0(drvdata->clk_ptr_intclk);

	FUNC2(card, drvdata);
}