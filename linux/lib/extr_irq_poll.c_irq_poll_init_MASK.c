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
struct irq_poll {int weight; int /*<<< orphan*/ * poll; int /*<<< orphan*/  list; } ;
typedef  int /*<<< orphan*/  irq_poll_fn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_poll*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct irq_poll *iop, int weight, irq_poll_fn *poll_fn)
{
	FUNC1(iop, 0, sizeof(*iop));
	FUNC0(&iop->list);
	iop->weight = weight;
	iop->poll = poll_fn;
}