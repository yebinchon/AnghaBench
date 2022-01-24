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
struct irq_desc {scalar_t__ debugfs_file; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int,int /*<<< orphan*/ ,struct irq_desc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dfs_irq_ops ; 
 int /*<<< orphan*/  irq_dir ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,unsigned int) ; 

void FUNC2(unsigned int irq, struct irq_desc *desc)
{
	char name [10];

	if (!irq_dir || !desc || desc->debugfs_file)
		return;

	FUNC1(name, "%d", irq);
	desc->debugfs_file = FUNC0(name, 0644, irq_dir, desc,
						 &dfs_irq_ops);
}