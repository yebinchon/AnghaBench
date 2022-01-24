#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct irq_chip* chip; } ;
struct irq_desc {TYPE_1__ irq_data; } ;
struct irq_chip {int (* irq_set_type ) (TYPE_1__*,unsigned long) ;int flags; scalar_t__ name; } ;

/* Variables and functions */
 int IRQCHIP_SET_TYPE_MASKED ; 
 unsigned long IRQD_LEVEL ; 
 unsigned long IRQD_TRIGGER_MASK ; 
#define  IRQ_SET_MASK_OK 130 
#define  IRQ_SET_MASK_OK_DONE 129 
#define  IRQ_SET_MASK_OK_NOCOPY 128 
 unsigned long IRQ_TYPE_LEVEL_MASK ; 
 unsigned long IRQ_TYPE_SENSE_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_desc*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,unsigned long) ; 
 unsigned long FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,unsigned long,int /*<<< orphan*/ ,int (*) (TYPE_1__*,unsigned long)) ; 
 int FUNC12 (TYPE_1__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (struct irq_desc*) ; 

int FUNC14(struct irq_desc *desc, unsigned long flags)
{
	struct irq_chip *chip = desc->irq_data.chip;
	int ret, unmask = 0;

	if (!chip || !chip->irq_set_type) {
		/*
		 * IRQF_TRIGGER_* but the PIC does not support multiple
		 * flow-types?
		 */
		FUNC10("No set_type function for IRQ %d (%s)\n",
			 FUNC0(desc),
			 chip ? (chip->name ? : "unknown") : "unknown");
		return 0;
	}

	if (chip->flags & IRQCHIP_SET_TYPE_MASKED) {
		if (!FUNC7(&desc->irq_data))
			FUNC9(desc);
		if (!FUNC6(&desc->irq_data))
			unmask = 1;
	}

	/* Mask all flags except trigger mode */
	flags &= IRQ_TYPE_SENSE_MASK;
	ret = chip->irq_set_type(&desc->irq_data, flags);

	switch (ret) {
	case IRQ_SET_MASK_OK:
	case IRQ_SET_MASK_OK_DONE:
		FUNC4(&desc->irq_data, IRQD_TRIGGER_MASK);
		FUNC8(&desc->irq_data, flags);
		/* fall through */

	case IRQ_SET_MASK_OK_NOCOPY:
		flags = FUNC5(&desc->irq_data);
		FUNC3(desc, flags);
		FUNC4(&desc->irq_data, IRQD_LEVEL);
		FUNC1(desc);
		if (flags & IRQ_TYPE_LEVEL_MASK) {
			FUNC2(desc);
			FUNC8(&desc->irq_data, IRQD_LEVEL);
		}

		ret = 0;
		break;
	default:
		FUNC11("Setting trigger mode %lu for irq %u failed (%pS)\n",
		       flags, FUNC0(desc), chip->irq_set_type);
	}
	if (unmask)
		FUNC13(desc);
	return ret;
}