#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct irqaction {void* dev_id; int flags; TYPE_1__* secondary; scalar_t__ thread; int /*<<< orphan*/  (* handler ) (unsigned int,void*) ;struct irqaction* next; } ;
struct TYPE_5__ {unsigned int irq; } ;
struct irq_desc {int /*<<< orphan*/  owner; TYPE_2__ irq_data; int /*<<< orphan*/  request_mutex; int /*<<< orphan*/  lock; struct irqaction* action; int /*<<< orphan*/ * affinity_hint; } ;
struct TYPE_4__ {scalar_t__ thread; } ;

/* Variables and functions */
 int IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_desc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_desc*) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (struct irq_desc*,struct irqaction*) ; 
 int /*<<< orphan*/  FUNC9 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC10 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC11 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC12 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC23 (unsigned int,void*) ; 
 int /*<<< orphan*/  FUNC24 (unsigned int,struct irqaction*) ; 

__attribute__((used)) static struct irqaction *FUNC25(struct irq_desc *desc, void *dev_id)
{
	unsigned irq = desc->irq_data.irq;
	struct irqaction *action, **action_ptr;
	unsigned long flags;

	FUNC0(FUNC5(), "Trying to free IRQ %d from IRQ context!\n", irq);

	FUNC18(&desc->request_mutex);
	FUNC3(desc);
	FUNC21(&desc->lock, flags);

	/*
	 * There can be multiple actions per IRQ descriptor, find the right
	 * one based on the dev_id:
	 */
	action_ptr = &desc->action;
	for (;;) {
		action = *action_ptr;

		if (!action) {
			FUNC0(1, "Trying to free already-free IRQ %d\n", irq);
			FUNC22(&desc->lock, flags);
			FUNC4(desc);
			FUNC19(&desc->request_mutex);
			return NULL;
		}

		if (action->dev_id == dev_id)
			break;
		action_ptr = &action->next;
	}

	/* Found it - now remove it from the list of entries: */
	*action_ptr = action->next;

	FUNC8(desc, action);

	/* If this was the last handler, shut down the IRQ line: */
	if (!desc->action) {
		FUNC11(desc);
		/* Only shutdown. Deactivate after synchronize_hardirq() */
		FUNC12(desc);
	}

#ifdef CONFIG_SMP
	/* make sure affinity_hint is cleaned up */
	if (WARN_ON_ONCE(desc->affinity_hint))
		desc->affinity_hint = NULL;
#endif

	FUNC22(&desc->lock, flags);
	/*
	 * Drop bus_lock here so the changes which were done in the chip
	 * callbacks above are synced out to the irq chips which hang
	 * behind a slow bus (I2C, SPI) before calling synchronize_hardirq().
	 *
	 * Aside of that the bus_lock can also be taken from the threaded
	 * handler in irq_finalize_oneshot() which results in a deadlock
	 * because kthread_stop() would wait forever for the thread to
	 * complete, which is blocked on the bus lock.
	 *
	 * The still held desc->request_mutex() protects against a
	 * concurrent request_irq() of this irq so the release of resources
	 * and timing data is properly serialized.
	 */
	FUNC4(desc);

	FUNC24(irq, action);

	/*
	 * Make sure it's not being used on another CPU and if the chip
	 * supports it also make sure that there is no (not yet serviced)
	 * interrupt in flight at the hardware level.
	 */
	FUNC2(desc, true);

#ifdef CONFIG_DEBUG_SHIRQ
	/*
	 * It's a shared IRQ -- the driver ought to be prepared for an IRQ
	 * event to happen even now it's being freed, so let's make sure that
	 * is so by doing an extra call to the handler ....
	 *
	 * ( We do this after actually deregistering it, to make sure that a
	 *   'real' IRQ doesn't run in parallel with our fake. )
	 */
	if (action->flags & IRQF_SHARED) {
		local_irq_save(flags);
		action->handler(irq, dev_id);
		local_irq_restore(flags);
	}
#endif

	/*
	 * The action has already been removed above, but the thread writes
	 * its oneshot mask bit when it completes. Though request_mutex is
	 * held across this which prevents __setup_irq() from handing out
	 * the same bit to a newly requested action.
	 */
	if (action->thread) {
		FUNC14(action->thread);
		FUNC20(action->thread);
		if (action->secondary && action->secondary->thread) {
			FUNC14(action->secondary->thread);
			FUNC20(action->secondary->thread);
		}
	}

	/* Last action releases resources */
	if (!desc->action) {
		/*
		 * Reaquire bus lock as irq_release_resources() might
		 * require it to deallocate resources over the slow bus.
		 */
		FUNC3(desc);
		/*
		 * There is no interrupt on the fly anymore. Deactivate it
		 * completely.
		 */
		FUNC21(&desc->lock, flags);
		FUNC7(&desc->irq_data);
		FUNC22(&desc->lock, flags);

		FUNC9(desc);
		FUNC4(desc);
		FUNC10(desc);
	}

	FUNC19(&desc->request_mutex);

	FUNC6(&desc->irq_data);
	FUNC17(desc->owner);
	FUNC13(action->secondary);
	return action;
}