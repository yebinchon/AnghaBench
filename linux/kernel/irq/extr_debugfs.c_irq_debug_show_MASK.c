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
struct seq_file {struct irq_desc* private; } ;
struct irq_desc {int /*<<< orphan*/  lock; int /*<<< orphan*/  wake_depth; int /*<<< orphan*/  depth; int /*<<< orphan*/  istate; int /*<<< orphan*/  status_use_accessors; int /*<<< orphan*/  dev_name; int /*<<< orphan*/  handle_irq; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,struct irq_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,struct irq_desc*) ; 
 struct irq_data* FUNC5 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC6 (struct irq_data*) ; 
 int /*<<< orphan*/  irqdata_states ; 
 int /*<<< orphan*/  irqdesc_istates ; 
 int /*<<< orphan*/  irqdesc_states ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct seq_file *m, void *p)
{
	struct irq_desc *desc = m->private;
	struct irq_data *data;

	FUNC7(&desc->lock);
	data = FUNC5(desc);
	FUNC9(m, "handler:  %ps\n", desc->handle_irq);
	FUNC9(m, "device:   %s\n", desc->dev_name);
	FUNC9(m, "status:   0x%08x\n", desc->status_use_accessors);
	FUNC2(m, 0, desc->status_use_accessors, irqdesc_states,
			    FUNC0(irqdesc_states));
	FUNC9(m, "istate:   0x%08x\n", desc->istate);
	FUNC2(m, 0, desc->istate, irqdesc_istates,
			    FUNC0(irqdesc_istates));
	FUNC9(m, "ddepth:   %u\n", desc->depth);
	FUNC9(m, "wdepth:   %u\n", desc->wake_depth);
	FUNC9(m, "dstate:   0x%08x\n", FUNC6(data));
	FUNC2(m, 0, FUNC6(data), irqdata_states,
			    FUNC0(irqdata_states));
	FUNC9(m, "node:     %d\n", FUNC1(data));
	FUNC4(m, desc);
	FUNC3(m, data, 0);
	FUNC8(&desc->lock);
	return 0;
}