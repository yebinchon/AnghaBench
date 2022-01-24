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
struct wm_adsp {int /*<<< orphan*/  pwr_lock; TYPE_1__* ops; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* stop_watchdog ) (struct wm_adsp*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct wm_adsp*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wm_adsp*) ; 
 int /*<<< orphan*/  FUNC4 (struct wm_adsp*) ; 

irqreturn_t FUNC5(int irq, void *data)
{
	struct wm_adsp *dsp = data;

	FUNC1(&dsp->pwr_lock);

	FUNC0(dsp, "WDT Expiry Fault\n");
	dsp->ops->stop_watchdog(dsp);
	FUNC4(dsp);

	FUNC2(&dsp->pwr_lock);

	return IRQ_HANDLED;
}