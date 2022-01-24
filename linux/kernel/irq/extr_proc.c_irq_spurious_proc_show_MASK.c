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
struct seq_file {scalar_t__ private; } ;
struct irq_desc {int /*<<< orphan*/  last_unhandled; int /*<<< orphan*/  irqs_unhandled; int /*<<< orphan*/  irq_count; } ;

/* Variables and functions */
 struct irq_desc* FUNC0 (long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct seq_file *m, void *v)
{
	struct irq_desc *desc = FUNC0((long) m->private);

	FUNC2(m, "count %u\n" "unhandled %u\n" "last_unhandled %u ms\n",
		   desc->irq_count, desc->irqs_unhandled,
		   FUNC1(desc->last_unhandled));
	return 0;
}