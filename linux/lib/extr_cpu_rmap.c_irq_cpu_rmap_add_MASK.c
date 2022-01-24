#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  release; int /*<<< orphan*/  notify; } ;
struct irq_glue {struct cpu_rmap* rmap; TYPE_1__ notify; int /*<<< orphan*/  index; } ;
struct cpu_rmap {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct cpu_rmap*,struct irq_glue*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpu_rmap*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpu_rmap*) ; 
 int /*<<< orphan*/  irq_cpu_rmap_notify ; 
 int /*<<< orphan*/  irq_cpu_rmap_release ; 
 int FUNC3 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_glue*) ; 
 struct irq_glue* FUNC5 (int,int /*<<< orphan*/ ) ; 

int FUNC6(struct cpu_rmap *rmap, int irq)
{
	struct irq_glue *glue = FUNC5(sizeof(*glue), GFP_KERNEL);
	int rc;

	if (!glue)
		return -ENOMEM;
	glue->notify.notify = irq_cpu_rmap_notify;
	glue->notify.release = irq_cpu_rmap_release;
	glue->rmap = rmap;
	FUNC1(rmap);
	glue->index = FUNC0(rmap, glue);
	rc = FUNC3(irq, &glue->notify);
	if (rc) {
		FUNC2(glue->rmap);
		FUNC4(glue);
	}
	return rc;
}