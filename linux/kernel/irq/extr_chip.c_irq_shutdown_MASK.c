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
struct irq_desc {int depth; TYPE_2__ irq_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* irq_shutdown ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct irq_desc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_desc*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

void FUNC6(struct irq_desc *desc)
{
	if (FUNC4(&desc->irq_data)) {
		desc->depth = 1;
		if (desc->irq_data.chip->irq_shutdown) {
			desc->irq_data.chip->irq_shutdown(&desc->irq_data);
			FUNC2(desc);
			FUNC3(desc);
		} else {
			FUNC0(desc, true);
		}
		FUNC1(desc);
	}
}