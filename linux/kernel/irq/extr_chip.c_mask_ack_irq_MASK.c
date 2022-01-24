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
struct TYPE_5__ {TYPE_1__* chip; } ;
struct irq_desc {TYPE_2__ irq_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* irq_ack ) (TYPE_2__*) ;int /*<<< orphan*/  (* irq_mask_ack ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static inline void FUNC4(struct irq_desc *desc)
{
	if (desc->irq_data.chip->irq_mask_ack) {
		desc->irq_data.chip->irq_mask_ack(&desc->irq_data);
		FUNC0(desc);
	} else {
		FUNC1(desc);
		if (desc->irq_data.chip->irq_ack)
			desc->irq_data.chip->irq_ack(&desc->irq_data);
	}
}