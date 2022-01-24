#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int dummy; } ;
struct irqaction {unsigned int irq; unsigned int flags; scalar_t__ handler; unsigned long thread_mask; struct task_struct* thread; struct irqaction* secondary; int /*<<< orphan*/  name; int /*<<< orphan*/ * dir; struct irqaction* next; scalar_t__ thread_fn; } ;
struct TYPE_8__ {TYPE_1__* chip; } ;
struct irq_desc {int istate; int depth; int /*<<< orphan*/  owner; int /*<<< orphan*/  request_mutex; struct irqaction* action; int /*<<< orphan*/  lock; scalar_t__ irqs_unhandled; scalar_t__ irq_count; TYPE_2__ irq_data; int /*<<< orphan*/  wait_for_threads; } ;
struct TYPE_7__ {int flags; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOSYS ; 
 int IRQCHIP_ONESHOT_SAFE ; 
 int /*<<< orphan*/  IRQD_IRQ_INPROGRESS ; 
 int /*<<< orphan*/  IRQD_NO_BALANCING ; 
 int /*<<< orphan*/  IRQD_PER_CPU ; 
 int IRQF_NOBALANCING ; 
 int IRQF_ONESHOT ; 
 int IRQF_PERCPU ; 
 int IRQF_PROBE_SHARED ; 
 int IRQF_SHARED ; 
 unsigned int IRQF_TRIGGER_MASK ; 
 int IRQS_AUTODETECT ; 
 int IRQS_NMI ; 
 int IRQS_ONESHOT ; 
 int IRQS_SPURIOUS_DISABLED ; 
 int IRQS_WAITING ; 
 int /*<<< orphan*/  IRQ_RESEND ; 
 int /*<<< orphan*/  IRQ_START_COND ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_desc*) ; 
 int FUNC2 (struct irq_desc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 unsigned long FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct irq_desc*) ; 
 scalar_t__ irq_default_primary_handler ; 
 scalar_t__ irq_nested_primary_handler ; 
 int /*<<< orphan*/  FUNC9 (struct irq_desc*,struct irqaction*) ; 
 int /*<<< orphan*/  FUNC10 (struct irq_desc*) ; 
 int FUNC11 (struct irq_desc*) ; 
 scalar_t__ FUNC12 (struct irq_desc*) ; 
 scalar_t__ FUNC13 (struct irq_desc*) ; 
 int FUNC14 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC15 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC16 (struct irq_desc*) ; 
 int FUNC17 (struct irqaction*) ; 
 int /*<<< orphan*/  FUNC18 (struct irq_desc*,struct irqaction*) ; 
 int /*<<< orphan*/  FUNC19 (struct irq_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC21 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*,unsigned int) ; 
 scalar_t__ FUNC24 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC25 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 TYPE_1__ no_irq_chip ; 
 int /*<<< orphan*/  FUNC29 (char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC30 (char*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC31 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC34 (unsigned int,struct irqaction*) ; 
 int /*<<< orphan*/  FUNC35 (unsigned int,struct irq_desc*) ; 
 int FUNC36 (struct irqaction*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (struct task_struct*) ; 

__attribute__((used)) static int
FUNC39(unsigned int irq, struct irq_desc *desc, struct irqaction *new)
{
	struct irqaction *old, **old_ptr;
	unsigned long flags, thread_mask = 0;
	int ret, nested, shared = 0;

	if (!desc)
		return -EINVAL;

	if (desc->irq_data.chip == &no_irq_chip)
		return -ENOSYS;
	if (!FUNC37(desc->owner))
		return -ENODEV;

	new->irq = irq;

	/*
	 * If the trigger type is not specified by the caller,
	 * then use the default for this interrupt.
	 */
	if (!(new->flags & IRQF_TRIGGER_MASK))
		new->flags |= FUNC21(&desc->irq_data);

	/*
	 * Check whether the interrupt nests into another interrupt
	 * thread.
	 */
	nested = FUNC14(desc);
	if (nested) {
		if (!new->thread_fn) {
			ret = -EINVAL;
			goto out_mput;
		}
		/*
		 * Replace the primary handler which was provided from
		 * the driver for non nested interrupt handling by the
		 * dummy function which warns when called.
		 */
		new->handler = irq_nested_primary_handler;
	} else {
		if (FUNC13(desc)) {
			ret = FUNC17(new);
			if (ret)
				goto out_mput;
		}
	}

	/*
	 * Create a handler thread when a thread function is supplied
	 * and the interrupt does not nest into another interrupt
	 * thread.
	 */
	if (new->thread_fn && !nested) {
		ret = FUNC36(new, irq, false);
		if (ret)
			goto out_mput;
		if (new->secondary) {
			ret = FUNC36(new->secondary, irq, true);
			if (ret)
				goto out_thread;
		}
	}

	/*
	 * Drivers are often written to work w/o knowledge about the
	 * underlying irq chip implementation, so a request for a
	 * threaded irq without a primary hard irq context handler
	 * requires the ONESHOT flag to be set. Some irq chips like
	 * MSI based interrupts are per se one shot safe. Check the
	 * chip flags, so we can avoid the unmask dance at the end of
	 * the threaded handler for those.
	 */
	if (desc->irq_data.chip->flags & IRQCHIP_ONESHOT_SAFE)
		new->flags &= ~IRQF_ONESHOT;

	/*
	 * Protects against a concurrent __free_irq() call which might wait
	 * for synchronize_hardirq() to complete without holding the optional
	 * chip bus lock and desc->lock. Also protects against handing out
	 * a recycled oneshot thread_mask bit while it's still in use by
	 * its previous owner.
	 */
	FUNC27(&desc->request_mutex);

	/*
	 * Acquire bus lock as the irq_request_resources() callback below
	 * might rely on the serialization or the magic power management
	 * functions which are abusing the irq_bus_lock() callback,
	 */
	FUNC3(desc);

	/* First installed action requests resources. */
	if (!desc->action) {
		ret = FUNC11(desc);
		if (ret) {
			FUNC29("Failed to request resources for %s (irq %d) on irqchip %s\n",
			       new->name, irq, desc->irq_data.chip->name);
			goto out_bus_unlock;
		}
	}

	/*
	 * The following block of code has to be executed atomically
	 * protected against a concurrent interrupt and any of the other
	 * management calls which are not serialized via
	 * desc->request_mutex or the optional bus lock.
	 */
	FUNC32(&desc->lock, flags);
	old_ptr = &desc->action;
	old = *old_ptr;
	if (old) {
		/*
		 * Can't share interrupts unless both agree to and are
		 * the same type (level, edge, polarity). So both flag
		 * fields must have IRQF_SHARED set and the bits which
		 * set the trigger type must match. Also all must
		 * agree on ONESHOT.
		 * Interrupt lines used for NMIs cannot be shared.
		 */
		unsigned int oldtype;

		if (desc->istate & IRQS_NMI) {
			FUNC29("Invalid attempt to share NMI for %s (irq %d) on irqchip %s.\n",
				new->name, irq, desc->irq_data.chip->name);
			ret = -EINVAL;
			goto out_unlock;
		}

		/*
		 * If nobody did set the configuration before, inherit
		 * the one provided by the requester.
		 */
		if (FUNC24(&desc->irq_data)) {
			oldtype = FUNC21(&desc->irq_data);
		} else {
			oldtype = new->flags & IRQF_TRIGGER_MASK;
			FUNC23(&desc->irq_data, oldtype);
		}

		if (!((old->flags & new->flags) & IRQF_SHARED) ||
		    (oldtype != (new->flags & IRQF_TRIGGER_MASK)) ||
		    ((old->flags ^ new->flags) & IRQF_ONESHOT))
			goto mismatch;

		/* All handlers must agree on per-cpuness */
		if ((old->flags & IRQF_PERCPU) !=
		    (new->flags & IRQF_PERCPU))
			goto mismatch;

		/* add new interrupt at end of irq queue */
		do {
			/*
			 * Or all existing action->thread_mask bits,
			 * so we can find the next zero bit for this
			 * new action.
			 */
			thread_mask |= old->thread_mask;
			old_ptr = &old->next;
			old = *old_ptr;
		} while (old);
		shared = 1;
	}

	/*
	 * Setup the thread mask for this irqaction for ONESHOT. For
	 * !ONESHOT irqs the thread mask is 0 so we can avoid a
	 * conditional in irq_wake_thread().
	 */
	if (new->flags & IRQF_ONESHOT) {
		/*
		 * Unlikely to have 32 resp 64 irqs sharing one line,
		 * but who knows.
		 */
		if (thread_mask == ~0UL) {
			ret = -EBUSY;
			goto out_unlock;
		}
		/*
		 * The thread_mask for the action is or'ed to
		 * desc->thread_active to indicate that the
		 * IRQF_ONESHOT thread handler has been woken, but not
		 * yet finished. The bit is cleared when a thread
		 * completes. When all threads of a shared interrupt
		 * line have completed desc->threads_active becomes
		 * zero and the interrupt line is unmasked. See
		 * handle.c:irq_wake_thread() for further information.
		 *
		 * If no thread is woken by primary (hard irq context)
		 * interrupt handlers, then desc->threads_active is
		 * also checked for zero to unmask the irq line in the
		 * affected hard irq flow handlers
		 * (handle_[fasteoi|level]_irq).
		 *
		 * The new action gets the first zero bit of
		 * thread_mask assigned. See the loop above which or's
		 * all existing action->thread_mask bits.
		 */
		new->thread_mask = 1UL << FUNC6(thread_mask);

	} else if (new->handler == irq_default_primary_handler &&
		   !(desc->irq_data.chip->flags & IRQCHIP_ONESHOT_SAFE)) {
		/*
		 * The interrupt was requested with handler = NULL, so
		 * we use the default primary handler for it. But it
		 * does not have the oneshot flag set. In combination
		 * with level interrupts this is deadly, because the
		 * default primary handler just wakes the thread, then
		 * the irq lines is reenabled, but the device still
		 * has the level irq asserted. Rinse and repeat....
		 *
		 * While this works for edge type interrupts, we play
		 * it safe and reject unconditionally because we can't
		 * say for sure which type this interrupt really
		 * has. The type flags are unreliable as the
		 * underlying chip implementation can override them.
		 */
		FUNC29("Threaded irq requested with handler=NULL and !ONESHOT for irq %d\n",
		       irq);
		ret = -EINVAL;
		goto out_unlock;
	}

	if (!shared) {
		FUNC7(&desc->wait_for_threads);

		/* Setup the type (level, edge polarity) if configured: */
		if (new->flags & IRQF_TRIGGER_MASK) {
			ret = FUNC2(desc,
						new->flags & IRQF_TRIGGER_MASK);

			if (ret)
				goto out_unlock;
		}

		/*
		 * Activate the interrupt. That activation must happen
		 * independently of IRQ_NOAUTOEN. request_irq() can fail
		 * and the callers are supposed to handle
		 * that. enable_irq() of an interrupt requested with
		 * IRQ_NOAUTOEN is not supposed to fail. The activation
		 * keeps it in shutdown mode, it merily associates
		 * resources if necessary and if that's not possible it
		 * fails. Interrupts which are in managed shutdown mode
		 * will simply ignore that activation request.
		 */
		ret = FUNC8(desc);
		if (ret)
			goto out_unlock;

		desc->istate &= ~(IRQS_AUTODETECT | IRQS_SPURIOUS_DISABLED | \
				  IRQS_ONESHOT | IRQS_WAITING);
		FUNC20(&desc->irq_data, IRQD_IRQ_INPROGRESS);

		if (new->flags & IRQF_PERCPU) {
			FUNC22(&desc->irq_data, IRQD_PER_CPU);
			FUNC16(desc);
		}

		if (new->flags & IRQF_ONESHOT)
			desc->istate |= IRQS_ONESHOT;

		/* Exclude IRQ from balancing if requested */
		if (new->flags & IRQF_NOBALANCING) {
			FUNC15(desc);
			FUNC22(&desc->irq_data, IRQD_NO_BALANCING);
		}

		if (FUNC12(desc)) {
			FUNC19(desc, IRQ_RESEND, IRQ_START_COND);
		} else {
			/*
			 * Shared interrupts do not go well with disabling
			 * auto enable. The sharing interrupt might request
			 * it while it's still disabled and then wait for
			 * interrupts forever.
			 */
			FUNC0(new->flags & IRQF_SHARED);
			/* Undo nested disables: */
			desc->depth = 1;
		}

	} else if (new->flags & IRQF_TRIGGER_MASK) {
		unsigned int nmsk = new->flags & IRQF_TRIGGER_MASK;
		unsigned int omsk = FUNC21(&desc->irq_data);

		if (nmsk != omsk)
			/* hope the handler works with current  trigger mode */
			FUNC30("irq %d uses trigger mode %u; requested %u\n",
				irq, omsk, nmsk);
	}

	*old_ptr = new;

	FUNC9(desc, new);

	/* Reset broken irq detection when installing new handler */
	desc->irq_count = 0;
	desc->irqs_unhandled = 0;

	/*
	 * Check whether we disabled the irq via the spurious handler
	 * before. Reenable it and give it another chance.
	 */
	if (shared && (desc->istate & IRQS_SPURIOUS_DISABLED)) {
		desc->istate &= ~IRQS_SPURIOUS_DISABLED;
		FUNC1(desc);
	}

	FUNC33(&desc->lock, flags);
	FUNC4(desc);
	FUNC28(&desc->request_mutex);

	FUNC18(desc, new);

	/*
	 * Strictly no need to wake it up, but hung_task complains
	 * when no hard interrupt wakes the thread up.
	 */
	if (new->thread)
		FUNC38(new->thread);
	if (new->secondary)
		FUNC38(new->secondary->thread);

	FUNC35(irq, desc);
	new->dir = NULL;
	FUNC34(irq, new);
	return 0;

mismatch:
	if (!(new->flags & IRQF_PROBE_SHARED)) {
		FUNC29("Flags mismatch irq %d. %08x (%s) vs. %08x (%s)\n",
		       irq, new->flags, new->name, old->flags, old->name);
#ifdef CONFIG_DEBUG_SHIRQ
		dump_stack();
#endif
	}
	ret = -EBUSY;

out_unlock:
	FUNC33(&desc->lock, flags);

	if (!desc->action)
		FUNC10(desc);
out_bus_unlock:
	FUNC4(desc);
	FUNC28(&desc->request_mutex);

out_thread:
	if (new->thread) {
		struct task_struct *t = new->thread;

		new->thread = NULL;
		FUNC25(t);
		FUNC31(t);
	}
	if (new->secondary && new->secondary->thread) {
		struct task_struct *t = new->secondary->thread;

		new->secondary->thread = NULL;
		FUNC25(t);
		FUNC31(t);
	}
out_mput:
	FUNC26(desc->owner);
	return ret;
}