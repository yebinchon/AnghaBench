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
struct omap_mcbsp {int free; int /*<<< orphan*/  lock; int /*<<< orphan*/ * reg_cache; TYPE_2__* pdata; scalar_t__ id; scalar_t__ tx_irq; int /*<<< orphan*/  dev; scalar_t__ rx_irq; scalar_t__ irq; int /*<<< orphan*/  reg_cache_size; } ;
struct TYPE_4__ {scalar_t__ has_wakeup; TYPE_1__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* free ) (scalar_t__) ;int /*<<< orphan*/  (* request ) (scalar_t__) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct omap_mcbsp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPCR1 ; 
 int /*<<< orphan*/  SPCR2 ; 
 int /*<<< orphan*/  WAKEUPEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  omap_mcbsp_irq_handler ; 
 int /*<<< orphan*/  omap_mcbsp_rx_irq_handler ; 
 int /*<<< orphan*/  omap_mcbsp_tx_irq_handler ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct omap_mcbsp *mcbsp)
{
	void *reg_cache;
	int err;

	reg_cache = FUNC4(mcbsp->reg_cache_size, GFP_KERNEL);
	if (!reg_cache)
		return -ENOMEM;

	FUNC6(&mcbsp->lock);
	if (!mcbsp->free) {
		FUNC1(mcbsp->dev, "McBSP%d is currently in use\n", mcbsp->id);
		err = -EBUSY;
		goto err_kfree;
	}

	mcbsp->free = false;
	mcbsp->reg_cache = reg_cache;
	FUNC7(&mcbsp->lock);

	if(mcbsp->pdata->ops && mcbsp->pdata->ops->request)
		mcbsp->pdata->ops->request(mcbsp->id - 1);

	/*
	 * Make sure that transmitter, receiver and sample-rate generator are
	 * not running before activating IRQs.
	 */
	FUNC0(mcbsp, SPCR1, 0);
	FUNC0(mcbsp, SPCR2, 0);

	if (mcbsp->irq) {
		err = FUNC5(mcbsp->irq, omap_mcbsp_irq_handler, 0,
				  "McBSP", (void *)mcbsp);
		if (err != 0) {
			FUNC1(mcbsp->dev, "Unable to request IRQ\n");
			goto err_clk_disable;
		}
	} else {
		err = FUNC5(mcbsp->tx_irq, omap_mcbsp_tx_irq_handler, 0,
				  "McBSP TX", (void *)mcbsp);
		if (err != 0) {
			FUNC1(mcbsp->dev, "Unable to request TX IRQ\n");
			goto err_clk_disable;
		}

		err = FUNC5(mcbsp->rx_irq, omap_mcbsp_rx_irq_handler, 0,
				  "McBSP RX", (void *)mcbsp);
		if (err != 0) {
			FUNC1(mcbsp->dev, "Unable to request RX IRQ\n");
			goto err_free_irq;
		}
	}

	return 0;
err_free_irq:
	FUNC2(mcbsp->tx_irq, (void *)mcbsp);
err_clk_disable:
	if(mcbsp->pdata->ops && mcbsp->pdata->ops->free)
		mcbsp->pdata->ops->free(mcbsp->id - 1);

	/* Disable wakeup behavior */
	if (mcbsp->pdata->has_wakeup)
		FUNC0(mcbsp, WAKEUPEN, 0);

	FUNC6(&mcbsp->lock);
	mcbsp->free = true;
	mcbsp->reg_cache = NULL;
err_kfree:
	FUNC7(&mcbsp->lock);
	FUNC3(reg_cache);

	return err;
}