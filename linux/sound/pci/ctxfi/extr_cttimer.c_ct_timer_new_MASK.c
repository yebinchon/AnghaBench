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
struct hw {int /*<<< orphan*/  irq_callback; struct ct_timer* irq_callback_data; scalar_t__ set_timer_irq; } ;
struct ct_timer {int /*<<< orphan*/ * ops; struct ct_atc* atc; int /*<<< orphan*/  running_head; int /*<<< orphan*/  instance_head; int /*<<< orphan*/  list_lock; int /*<<< orphan*/  lock; } ;
struct ct_atc {TYPE_1__* card; struct hw* hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ct_systimer_ops ; 
 int /*<<< orphan*/  ct_timer_interrupt ; 
 int /*<<< orphan*/  ct_xfitimer_ops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct ct_timer* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  use_system_timer ; 

struct ct_timer *FUNC4(struct ct_atc *atc)
{
	struct ct_timer *atimer;
	struct hw *hw;

	atimer = FUNC2(sizeof(*atimer), GFP_KERNEL);
	if (!atimer)
		return NULL;
	FUNC3(&atimer->lock);
	FUNC3(&atimer->list_lock);
	FUNC0(&atimer->instance_head);
	FUNC0(&atimer->running_head);
	atimer->atc = atc;
	hw = atc->hw;
	if (!use_system_timer && hw->set_timer_irq) {
		FUNC1(atc->card->dev, "Use xfi-native timer\n");
		atimer->ops = &ct_xfitimer_ops;
		hw->irq_callback_data = atimer;
		hw->irq_callback = ct_timer_interrupt;
	} else {
		FUNC1(atc->card->dev, "Use system timer\n");
		atimer->ops = &ct_systimer_ops;
	}
	return atimer;
}