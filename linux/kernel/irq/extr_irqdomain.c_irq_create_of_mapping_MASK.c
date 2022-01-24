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
struct of_phandle_args {int /*<<< orphan*/  args_count; int /*<<< orphan*/  args; int /*<<< orphan*/  np; } ;
struct irq_fwspec {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct irq_fwspec*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct irq_fwspec*) ; 

unsigned int FUNC2(struct of_phandle_args *irq_data)
{
	struct irq_fwspec fwspec;

	FUNC1(irq_data->np, irq_data->args,
				  irq_data->args_count, &fwspec);

	return FUNC0(&fwspec);
}