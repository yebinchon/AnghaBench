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
struct irq_chip {int dummy; } ;
typedef  int /*<<< orphan*/  irq_flow_handler_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct irq_chip*) ; 

void
FUNC2(unsigned int irq, struct irq_chip *chip,
			      irq_flow_handler_t handle, const char *name)
{
	FUNC1(irq, chip);
	FUNC0(irq, handle, 0, name);
}