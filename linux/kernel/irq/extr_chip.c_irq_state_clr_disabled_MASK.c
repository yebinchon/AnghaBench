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
struct irq_desc {int /*<<< orphan*/  irq_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQD_IRQ_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct irq_desc *desc)
{
	FUNC0(&desc->irq_data, IRQD_IRQ_DISABLED);
}