#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct omap_mcbsp {int free; int /*<<< orphan*/  lock; int /*<<< orphan*/ * reg_cache; scalar_t__ id; int /*<<< orphan*/  dev; scalar_t__ tx_irq; scalar_t__ rx_irq; scalar_t__ irq; TYPE_2__* pdata; } ;
struct TYPE_4__ {scalar_t__ has_wakeup; TYPE_1__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* free ) (scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  IRQEN ; 
 int /*<<< orphan*/  MCBSP_CLKS_PRCM_SRC ; 
 int /*<<< orphan*/  FUNC0 (struct omap_mcbsp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WAKEUPEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct omap_mcbsp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct omap_mcbsp *mcbsp)
{
	void *reg_cache;

	if(mcbsp->pdata->ops && mcbsp->pdata->ops->free)
		mcbsp->pdata->ops->free(mcbsp->id - 1);

	/* Disable wakeup behavior */
	if (mcbsp->pdata->has_wakeup)
		FUNC0(mcbsp, WAKEUPEN, 0);

	/* Disable interrupt requests */
	if (mcbsp->irq)
		FUNC0(mcbsp, IRQEN, 0);

	if (mcbsp->irq) {
		FUNC2(mcbsp->irq, (void *)mcbsp);
	} else {
		FUNC2(mcbsp->rx_irq, (void *)mcbsp);
		FUNC2(mcbsp->tx_irq, (void *)mcbsp);
	}

	reg_cache = mcbsp->reg_cache;

	/*
	 * Select CLKS source from internal source unconditionally before
	 * marking the McBSP port as free.
	 * If the external clock source via MCBSP_CLKS pin has been selected the
	 * system will refuse to enter idle if the CLKS pin source is not reset
	 * back to internal source.
	 */
	if (!FUNC4())
		FUNC5(mcbsp, MCBSP_CLKS_PRCM_SRC);

	FUNC6(&mcbsp->lock);
	if (mcbsp->free)
		FUNC1(mcbsp->dev, "McBSP%d was not reserved\n", mcbsp->id);
	else
		mcbsp->free = true;
	mcbsp->reg_cache = NULL;
	FUNC7(&mcbsp->lock);

	FUNC3(reg_cache);
}