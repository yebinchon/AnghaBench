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
struct irq_desc {int istate; scalar_t__ wake_depth; int /*<<< orphan*/  irq_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IRQD_WAKEUP_STATE ; 
 int IRQS_NMI ; 
 int /*<<< orphan*/  IRQ_GET_DESC_CHECK_GLOBAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int) ; 
 struct irq_desc* FUNC1 (unsigned int,unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_desc*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (unsigned int,unsigned int) ; 

int FUNC6(unsigned int irq, unsigned int on)
{
	unsigned long flags;
	struct irq_desc *desc = FUNC1(irq, &flags, IRQ_GET_DESC_CHECK_GLOBAL);
	int ret = 0;

	if (!desc)
		return -EINVAL;

	/* Don't use NMIs as wake up interrupts please */
	if (desc->istate & IRQS_NMI) {
		ret = -EINVAL;
		goto out_unlock;
	}

	/* wakeup-capable irqs can be shared between drivers that
	 * don't need to have the same sleep mode behaviors.
	 */
	if (on) {
		if (desc->wake_depth++ == 0) {
			ret = FUNC5(irq, on);
			if (ret)
				desc->wake_depth = 0;
			else
				FUNC4(&desc->irq_data, IRQD_WAKEUP_STATE);
		}
	} else {
		if (desc->wake_depth == 0) {
			FUNC0(1, "Unbalanced IRQ %d wake disable\n", irq);
		} else if (--desc->wake_depth == 0) {
			ret = FUNC5(irq, on);
			if (ret)
				desc->wake_depth = 1;
			else
				FUNC3(&desc->irq_data, IRQD_WAKEUP_STATE);
		}
	}

out_unlock:
	FUNC2(desc, flags);
	return ret;
}