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
struct irq_desc {int /*<<< orphan*/  threads_oneshot; int /*<<< orphan*/  irq_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_desc*) ; 

__attribute__((used)) static void FUNC3(struct irq_desc *desc)
{
	/*
	 * We need to unmask in the following cases:
	 * - Standard level irq (IRQF_ONESHOT is not set)
	 * - Oneshot irq which did not wake the thread (caused by a
	 *   spurious interrupt or a primary handler handling it
	 *   completely).
	 */
	if (!FUNC0(&desc->irq_data) &&
	    FUNC1(&desc->irq_data) && !desc->threads_oneshot)
		FUNC2(desc);
}